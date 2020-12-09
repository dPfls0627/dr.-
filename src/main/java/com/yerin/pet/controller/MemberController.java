package com.yerin.pet.controller;



import java.io.IOException;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.yerin.pet.dto.GoogleOAuthResponse;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import org.codehaus.jackson.JsonNode;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.yerin.pet.api.KakaoJoinApi;
import com.yerin.pet.api.KakaoLoginApi;
import com.yerin.pet.api.NaverJoinApi;
import com.yerin.pet.api.NaverLoginApi;
import com.yerin.pet.dto.GoogleOAuthRequest;
import com.yerin.pet.dto.MemberDTO;
import com.yerin.pet.dto.ShopMemberDTO;
import com.yerin.pet.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	private ModelAndView mav;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private KakaoJoinApi kakaoJoinApi;
	
	@Autowired
	private KakaoLoginApi kakaoLoginApi;
	
	@Autowired
	private NaverJoinApi naverJoinApi;
	
	@Autowired
	private NaverLoginApi naverLoginApi;
	

	@RequestMapping (value="/shopmemberjoin")
	public ModelAndView shopMemberJoin(@ModelAttribute ShopMemberDTO shopMember) throws IllegalStateException, IOException {
		System.out.println("controller"+shopMember.toString());
		mav = memberService.shopMemberJoin(shopMember);
		return mav;
	}
	
	@RequestMapping (value="/memberjoin")
	public ModelAndView memberJoin(@ModelAttribute MemberDTO member){
		mav = memberService.memberJoin(member);
		return mav;
	}
	
	@RequestMapping(value="/idoverlap1")
	public @ResponseBody String idOverlap(@RequestParam("mid") String mid) {
		String resultMag = memberService.idOverlap1(mid);
		return resultMag;
	}
	
	@RequestMapping(value="/idoverlap2")
	public @ResponseBody String idOverlap2(@RequestParam("sid") String sid) {
		String resultMag = memberService.idOverlap2(sid);
		return resultMag;
	}
	
	@RequestMapping (value="/memberlogin")
	public ModelAndView memberLogin(@RequestParam("id") String id, @RequestParam("pw") String pw, @RequestParam(value="radio" , required=false) String type){
		if(type.equals("일반")) {
			String mid = id;
			String mpassword = pw;
			mav = memberService.memberLogin(mid, mpassword);
		}else if(type.equals("업체")){
			String sid = id;
			String spassword = pw;
			mav = memberService.memberShopLogin(sid, spassword);
		}
		return mav;
	}
	
	@RequestMapping(value="/memberloginok")
	public ModelAndView memberLoginOk(@RequestParam("sid") String sid) {
		mav = memberService.memberLoginOk(sid);
		return mav;
	}
	
	@RequestMapping(value="/memberdelete")
	public ModelAndView memberDelete(@RequestParam("mid") String mid) {
		mav = memberService.memberDelete(mid);
		return mav;
	}
	
	@RequestMapping(value="/shopmemberdelete")
	public ModelAndView shopMemberDelete(@RequestParam("sid") String sid) {
		mav = memberService.shopMemberDelete(sid);
		return mav;
	}
	
	@RequestMapping(value="/memberupdateprocess")
	public ModelAndView memberUpdateProcess(MemberDTO member) {
		mav = memberService.memberUpdateProcess(member);
		return mav;
	}
	
	@RequestMapping(value="/memberout")
	public ModelAndView memberOut(@RequestParam("mid") String mid) {
		mav = memberService.memberOut(mid);
		return mav;
	}
	
	
	@RequestMapping(value="/logout")
	public String memberLogout() {
		session.invalidate();
		return "index";
	}


		//카카오 서버 로그인 
		@RequestMapping(value="/kakaojoin")
		public ModelAndView kakaoJoin(HttpSession session) {
			String kakaoUrl = kakaoJoinApi.getAuthorizationUrl(session);
			mav = new ModelAndView();
			mav.addObject("kakaoUrl",kakaoUrl);
			mav.setViewName("KakaoLogin");
			return mav;
		}
		//카카오 서버 인증 통과후 처리
		@RequestMapping(value="/kakaojoinok")
		public ModelAndView kakaoJoinOK(@RequestParam("code") String code,
				HttpSession session) {
		JsonNode token = kakaoJoinApi.getAccessToken(code);
		JsonNode profile = kakaoJoinApi.getKakaoUserInfo(token.path("access_token"));
		System.out.println("profile"+profile);
		String kakaoId = profile.get("id").asText();
		mav = new ModelAndView();
		mav.addObject("kakaoId",kakaoId);
		mav.setViewName("JoinForm");
		
		return mav;
		}
		//카카오 로그인
		@RequestMapping(value="/kakaologin")
		public ModelAndView kakaoLogin(HttpSession session) {
			String kakaoUrl = kakaoJoinApi.getAuthorizationUrl(session);
			mav = new ModelAndView();
			mav.addObject("kakaoUrl",kakaoUrl);
			mav.setViewName("KakaoLogin");
			return mav;
		}
		
		@RequestMapping(value="/kakaologinok")
		public ModelAndView kakaoLoginOK(@RequestParam("code") String code){
			JsonNode token = kakaoLoginApi.getAccessToken(code);
			JsonNode profile = kakaoLoginApi.getKakaoUserInfo(token.path("access_token"));
			/* mav = new ModelAndView(); */
			mav = memberService.kakaoLogin(profile);
			return mav;
		}
		//네이버 회원가입
		@RequestMapping(value="/naverjoin")
		public ModelAndView naverJoin(HttpSession session) {
			String naverUrl = naverJoinApi.getAuthorizationUrl(session);
			mav = new ModelAndView();
			mav.addObject("naverUrl", naverUrl);
			mav.setViewName("NaverLogin");
			return mav;
		}
		
		@RequestMapping(value="/naverjoinok")
		public ModelAndView naverJoinOK(@RequestParam("code") String code,
				@RequestParam("state") String state, HttpSession session) throws IOException, ParseException {
			mav = new ModelAndView();
			OAuth2AccessToken oauthToken = naverJoinApi.getAccessToken(session, code, state);
			String profile = naverJoinApi.getUserProfile(oauthToken);
			JSONParser parser = new JSONParser();
			
			Object obj = parser.parse(profile);
			System.out.println(profile+"프로필");
			JSONObject naverUser = (JSONObject)obj;
			System.out.println(naverUser);
			JSONObject userInfo = (JSONObject)naverUser.get("response");
			System.out.println(userInfo);
			String naverId = (String) userInfo.get("id");
			System.out.println(naverId);
			
			mav.addObject("naverId", naverId);
			mav.setViewName("JoinForm");
			
			return mav;
		}
		//네이버 로그인
		@RequestMapping(value="/naverlogin")
		public ModelAndView naverLogin(HttpSession session) {
			String naverUrl = naverLoginApi.getAuthorizationUrl(session);
			mav = new ModelAndView();
			mav.addObject("naverUrl", naverUrl);
			mav.setViewName("NaverLogin");
			return mav;
		}
		
		@RequestMapping(value="/naverloginok")
		public ModelAndView naverLoginOK(@RequestParam("code") String code,
				@RequestParam("state") String state, HttpSession session) throws IOException, ParseException {
			OAuth2AccessToken oauthToken = naverLoginApi.getAccessToken(session, code, state);
			String profile = naverJoinApi.getUserProfile(oauthToken);
			mav = memberService.naverLogin(profile);
			return mav;
			
		}
		
		//구글 로그인
//		public class LoginController {
//
//			final static String GOOGLE_AUTH_BASE_URL = "https://accounts.google.com/o/oauth2/v2/auth";
//			final static String GOOGLE_TOKEN_BASE_URL = "https://oauth2.googleapis.com/token";
//			final static String GOOGLE_REVOKE_TOKEN_BASE_URL = "https://oauth2.googleapis.com/revoke";
//
//			@Value("${api.client_id}")
//			String clientId;
//			@Value("${api.client_secret}")
//			String clientSecret;
//
//
//			/**
//			 * Authentication Code를 전달 받는 엔드포인트
//			 **/
//			@GetMapping("google/auth")
//			public String googleAuth(Model model, @RequestParam(value ="code") String authCode)
//					throws JsonProcessingException {
//				
//				//HTTP Request를 위한 RestTemplate
//				RestTemplate restTemplate = new RestTemplate();
//
//				//Google OAuth Access Token 요청을 위한 파라미터 세팅
//				GoogleOAuthRequest googleOAuthRequestParam = GoogleOAuthRequest
//						.builder()
//						.clientId(clientId)
//						.clientSecret(clientSecret)
//						.code(authCode)
//						.redirectUri("http://localhost:8086/yerin/google/auth")
//						.grantType("authorization_code").build();
//
//				
//				//JSON 파싱을 위한 기본값 세팅
//				//요청시 파라미터는 스네이크 케이스로 세팅되므로 Object mapper에 미리 설정해준다.
//				ObjectMapper mapper = new ObjectMapper();
//				mapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);
//				mapper.setSerializationInclusion(Include.NON_NULL);
//
//				//AccessToken 발급 요청
//				ResponseEntity<String> resultEntity = restTemplate.postForEntity(GOOGLE_TOKEN_BASE_URL, googleOAuthRequestParam, String.class);
//
//				//Token Request
//				GoogleOAuthResponse result = mapper.readValue(resultEntity.getBody(), new TypeReference<GoogleOAuthResponse>() {
//				});
//				
//				System.out.println(resultEntity.getBody());
//
//				//ID Token만 추출 (사용자의 정보는 jwt로 인코딩 되어있다)
//				String jwtToken = result.getIdToken();
//				String requestUrl = UriComponentsBuilder.fromHttpUrl("https://oauth2.googleapis.com/tokeninfo")
//				.queryParam("id_token", jwtToken).encode().toUriString();
//				
//				String resultJson = restTemplate.getForObject(requestUrl, String.class);
//				
//				Map<String,String> userInfo = mapper.readValue(resultJson, new TypeReference<Map<String, String>>(){});
//				model.addAllAttributes(userInfo);
//				model.addAttribute("token", result.getAccessToken());
//				System.out.println(userInfo);
//
//
//
//
//				return "/google.html";
//
//			}
//
//			/**
//			 * 토큰 무효화 
//			 **/
//			@GetMapping("google/revoke/token")
//			@ResponseBody
//			public Map<String, String> revokeToken(@RequestParam(value = "token") String token) throws JsonProcessingException {
//
//				Map<String, String> result = new HashMap<>();
//				RestTemplate restTemplate = new RestTemplate();
//				final String requestUrl = UriComponentsBuilder.fromHttpUrl(GOOGLE_REVOKE_TOKEN_BASE_URL)
//						.queryParam("token", token).encode().toUriString();
//				
//				System.out.println("TOKEN ? " + token);
//				
//				String resultJson = restTemplate.postForObject(requestUrl, null, String.class);
//				result.put("result", "success");
//				result.put("resultJson", resultJson);
//
//				return result;
//
//			}
//			
//			
//			
//			
//		}
		
}



