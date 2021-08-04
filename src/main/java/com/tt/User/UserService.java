package com.tt.User;

public interface UserService {

	/**
     * 지정된 사용자정보로 회원가입을 수행하는 서비스
     * @param user 사용자정보
     */
    void registerUser(UserVO user);

    /**
     * 지정된 이메일과 비밀번호로 사용자인증을 수행하는 서비스
     * @param email 사용자 이메일
     * @param password 사용자 비밀번호
     */
    void login(String email, String password);

    /**
     * 지정된 사용자이메일로 데이터베이스에서 사용자정보를 조회해서 반환한다
     * @param email 사용자 이메일
     */
    int getUserByEmail(String email);

}
