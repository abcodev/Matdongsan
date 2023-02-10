package com.project.common.template;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

public class BoardCookieHelper {

    private static final int BOARD_COUNT_UP_COOKIE_MAX_AGE = 60 * 60;

    // boardType : qna, free
    public static boolean existCountUpCookie(
            HttpServletRequest req,
            String boardType,
            int boardNo
    ) {
        return Arrays.stream(req.getCookies())
                .filter(cookie -> cookie.getName().equals(boardType))
                .findFirst()
                .map(cookie -> cookie.getValue().contains("[" + boardNo + "]"))
                .orElse(false);
    }

    public static void generateCountUpCookie(HttpServletRequest req, HttpServletResponse resp, String boardType, int boardNo) {
        Cookie generatedCookie = Arrays.stream(req.getCookies())
                .filter(cookie -> cookie.getName().equals(boardType))
                .findFirst()
                .orElse(new Cookie(boardType, "[" + boardNo + "]"));

        if (!generatedCookie.getValue().contains("[" + boardNo + "]")) {
            generatedCookie.setValue(generatedCookie.getValue() + "_[" + boardNo + "]");
        }
        generatedCookie.setPath("/");
        generatedCookie.setMaxAge(BOARD_COUNT_UP_COOKIE_MAX_AGE);
        resp.addCookie(generatedCookie);
    }
}
