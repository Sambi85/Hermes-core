=> [32m#<ActionDispatch::Cookies::CookieJar:0x00007db6406311f8[0m
 @committed[32m=[0m[1;36mfalse[0m,
 @cookies[32m=[0m{[31m[1;31m"[0m[31mX-CSRF-Token[1;31m"[0m[31m[0m=>[31m[1;31m"[0m[31m[1;31m"[0m[31m[0m},
 @delete_cookies[32m=[0m{[31m[1;31m"[0m[31m_user_session_key[1;31m"[0m[31m[0m=>{[33m:path[0m=>[31m[1;31m"[0m[31m/[1;31m"[0m[31m[0m, [33m:same_site[0m=>[33m:lax[0m}},
 @encrypted[32m=[0m
  [32m#<ActionDispatch::Cookies::EncryptedKeyRotatingCookieJar:0x00007db640630f28[0m
   @encryptor[32m=[0m
    [32m#<ActiveSupport::MessageEncryptor:0x00007db6406308e8[0m
     @aead_mode[32m=[0m[1;36mtrue[0m,
     @cipher[32m=[0m[31m[1;31m"[0m[31maes-256-gcm[1;31m"[0m[31m[0m,
     @on_rotation[32m=[0m[1;36mnil[0m,
     @options[32m=[0m{[33m:cipher[0m=>[31m[1;31m"[0m[31maes-256-gcm[1;31m"[0m[31m[0m, [33m:serializer[0m=>[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m},
     @rotations[32m=[0m
      [[32m#<ActiveSupport::MessageEncryptor:0x00007db64063fe60[0m
        @aead_mode[32m=[0m[1;36mfalse[0m,
        @cipher[32m=[0m[31m[1;31m"[0m[31maes-256-cbc[1;31m"[0m[31m[0m,
        @digest[32m=[0m[31m[1;31m"[0m[31mSHA1[1;31m"[0m[31m[0m,
        @on_rotation[32m=[0m[1;36mnil[0m,
        @options[32m=[0m{[33m:cipher[0m=>[31m[1;31m"[0m[31maes-256-cbc[1;31m"[0m[31m[0m, [33m:serializer[0m=>[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m, [33m:digest[0m=>[31m[1;31m"[0m[31mSHA1[1;31m"[0m[31m[0m},
        @rotations[32m=[0m[],
        @secret[32m=[0m[31m[1;31m"[0m[31mp5l[1;35m\xD7[0m[31m[1;35m\xF6[0m[31mH[1;35m\xCE[0m[31mb[1;35m\x92[0m[31m]t[1;35m\xB6[0m[31m[1;35m\x7F[0m[31m[1;35m\xCE[0m[31mL[1;35m\x8B[0m[31m[1;35m\xA9[0m[31m[1;35m\xBC[0m[31m[1;35m\xE5[0m[31m[1;35m\xD3[0m[31m([1;35m\xBF[0m[31m[1;35m\xAE[0m[31m)q|z,[1;35m\xAA[0m[31mW[1;35m\x8F[0m[31m[1;35m\x1D[0m[31m[1;31m"[0m[31m[0m,
        @serializer[32m=[0m[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m,
        @sign_secret[32m=[0m
         [31m[1;31m"[0m[31m4/[1;35m\xB4[0m[31m[1;35m\xB7[0m[31mf{W[1;35m\x03[0m[31m[1;35m\x9F[0m[31m>[1;35m\xFA[0m[31mw[1;35m\xE0[0m[31mh[1;35m\xB4[0m[31m[1;35m\x96[0m[31m^`[1;35m\xAE[0m[31m[1;35m\x9A[0m[31mM[1;35m\xEE[0m[31m [1;35m\x95[0m[31m[1;35m\x1D[0m[31m[1;35m\xE9[0m[31mjZZ[1;35m\x9E[0m[31m[1;35m\xDB[0m[31m[1;35m\xBA[0m[31m[1;35m\xB6[0m[31m[1;35m\x03[0m[31m[1;35m\xFF[0m[31m[1;35m\x1E[0m[31mJ[1;35m\xC6[0m[31m0[1;35m\x1C[0m[31mT[1;35m\xF2[0m[31mW$[1;35m\xDB[0m[31m[1;35m\xD8[0m[31m[1;35m\x16[0m[31m:[1;35m\xD1[0m[31mJV[1;35m\x89[0m[31m[1;35m\xB5[0m[31m[1;35m\x14[0m[31ml[1;35m\x95[0m[31mTSS[1;35m\xB5[0m[31m[1;35m\xED[0m[31m[1;35m\x94[0m[31m[1;35m\xE1[0m[31m[1;35m\xAB[0m[31m[1;31m"[0m[31m[0m,
        @verifier[32m=[0m
         [32m#<ActiveSupport::MessageVerifier:0x00007db64063fc08[0m
          @digest[32m=[0m[31m[1;31m"[0m[31mSHA1[1;31m"[0m[31m[0m,
          @on_rotation[32m=[0m[1;36mnil[0m,
          @options[32m=[0m{[33m:digest[0m=>[31m[1;31m"[0m[31mSHA1[1;31m"[0m[31m[0m, [33m:serializer[0m=>[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m},
          @rotations[32m=[0m[],
          @secret[32m=[0m
           [31m[1;31m"[0m[31m4/[1;35m\xB4[0m[31m[1;35m\xB7[0m[31mf{W[1;35m\x03[0m[31m[1;35m\x9F[0m[31m>[1;35m\xFA[0m[31mw[1;35m\xE0[0m[31mh[1;35m\xB4[0m[31m[1;35m\x96[0m[31m^`[1;35m\xAE[0m[31m[1;35m\x9A[0m[31mM[1;35m\xEE[0m[31m [1;35m\x95[0m[31m[1;35m\x1D[0m[31m[1;35m\xE9[0m[31mjZZ[1;35m\x9E[0m[31m[1;35m\xDB[0m[31m[1;35m\xBA[0m[31m[1;35m\xB6[0m[31m[1;35m\x03[0m[31m[1;35m\xFF[0m[31m[1;35m\x1E[0m[31mJ[1;35m\xC6[0m[31m0[1;35m\x1C[0m[31mT[1;35m\xF2[0m[31mW$[1;35m\xDB[0m[31m[1;35m\xD8[0m[31m[1;35m\x16[0m[31m:[1;35m\xD1[0m[31mJV[1;35m\x89[0m[31m[1;35m\xB5[0m[31m[1;35m\x14[0m[31ml[1;35m\x95[0m[31mTSS[1;35m\xB5[0m[31m[1;35m\xED[0m[31m[1;35m\x94[0m[31m[1;35m\xE1[0m[31m[1;35m\xAB[0m[31m[1;31m"[0m[31m[0m,
          @serializer[32m=[0m[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m[32m>[0m[32m>[0m],
     @secret[32m=[0m[31m[1;31m"[0m[31m[1;35m\xF5[0m[31mG[1;35m\xA5[0m[31m[1;35m\xBF[0m[31m[1;35m\xC9[0m[31mdCDX&[1;35m\x8E[0m[31m[1;35m\xF1[0m[31m[1;35m\x98[0m[31m0[1;35m\xC2[0m[31mm[1;35m\xF6[0m[31mR[1;35m\xED[0m[31m[1;35m\x94[0m[31m[1;35m\xA7[0m[31m[1;35m\t[0m[31m[1;35m\xC6[0m[31m[1;35m\x9F[0m[31m[1;35m\x1D[0m[31m[1;35m\xE5[0m[31mq?[1;35m\x03[0m[31m[1;35m\xD6[0m[31m[1;35m\x81[0m[31m[1;35m\xF8[0m[31m[1;31m"[0m[31m[0m,
     @serializer[32m=[0m[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m,
     @sign_secret[32m=[0m[1;36mnil[0m,
     @verifier[32m=[0m[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullVerifier[0m[32m>[0m,
   @parent_jar[32m=[0m[32m#<ActionDispatch::Cookies::CookieJar:0x00007db6406311f8[0m ...[32m>[0m[32m>[0m,
 @request[32m=[0m[32m#<ActionDispatch::Request GET "http://localhost:3000/users/sign_in" for ::1>[0m,
 @set_cookies[32m=[0m{},
 @signed[32m=[0m
  [32m#<ActionDispatch::Cookies::SignedKeyRotatingCookieJar:0x00007db64063dd40[0m
   @parent_jar[32m=[0m[32m#<ActionDispatch::Cookies::CookieJar:0x00007db6406311f8[0m ...[32m>[0m,
   @verifier[32m=[0m
    [32m#<ActiveSupport::MessageVerifier:0x00007db64063d9f8[0m
     @digest[32m=[0m[31m[1;31m"[0m[31mSHA1[1;31m"[0m[31m[0m,
     @on_rotation[32m=[0m[1;36mnil[0m,
     @options[32m=[0m{[33m:digest[0m=>[31m[1;31m"[0m[31mSHA1[1;31m"[0m[31m[0m, [33m:serializer[0m=>[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m},
     @rotations[32m=[0m[],
     @secret[32m=[0m
      [31m[1;31m"[0m[31m[1;35m\xAF[0m[31m[1;35m\x9D[0m[31m:[1;35m\x99[0m[31m[1;35m\xE1[0m[31m[1;35m\xDE[0m[31m>j[1;35m\xDD[0m[31m[1;35m\xB3[0m[31m|_[1;35m\xE0[0m[31m[1;35m\t[0m[31ml[1;35m\xFF[0m[31m[1;35m\x9F[0m[31m[1;35m\x15[0m[31m[1;35m\x83[0m[31mx[1;35m\xE9[0m[31m[1;35m\b[0m[31mI[1;35m\xF5[0m[31m[1;35m\a[0m[31m#-[1;35m\xAF[0m[31m[1;35m\xAC[0m[31m[1;35m\x12[0m[31m:[1;35m\x93[0m[31m[1;35m\x9A[0m[31m2[1;35m\xD8[0m[31m[1;35m\xAF[0m[31m[1;35m\xEC[0m[31m/[1;35m\xDF[0m[31m[1;35m\x96[0m[31m[1;35m\\[0m[31m[1;35m\xAE[0m[31m[1;35m\x99[0m[31m;[1;35m\xC1[0m[31m[1;35m\xE8[0m[31m[1;35m\x92[0m[31m[1;35m\xB1[0m[31m9y.[1;35m\x05[0m[31m[1;35m\xEA[0m[31m[1;35m\xC2[0m[31m[1;35m\xCD[0m[31mA@[1;35m\xFE[0m[31m[1;35m\xA7[0m[31m[1;35m\x88[0m[31m)[1;35m\xBC[0m[31m[1;35m\xF2[0m[31mz[1;31m"[0m[31m[0m,
     @serializer[32m=[0m[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m[32m>[0m[32m>[0m,
 @signed_or_encrypted[32m=[0m
  [32m#<ActionDispatch::Cookies::EncryptedKeyRotatingCookieJar:0x00007db640630f28[0m
   @encryptor[32m=[0m
    [32m#<ActiveSupport::MessageEncryptor:0x00007db6406308e8[0m
     @aead_mode[32m=[0m[1;36mtrue[0m,
     @cipher[32m=[0m[31m[1;31m"[0m[31maes-256-gcm[1;31m"[0m[31m[0m,
     @on_rotation[32m=[0m[1;36mnil[0m,
     @options[32m=[0m{[33m:cipher[0m=>[31m[1;31m"[0m[31maes-256-gcm[1;31m"[0m[31m[0m, [33m:serializer[0m=>[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m},
     @rotations[32m=[0m
      [[32m#<ActiveSupport::MessageEncryptor:0x00007db64063fe60[0m
        @aead_mode[32m=[0m[1;36mfalse[0m,
        @cipher[32m=[0m[31m[1;31m"[0m[31maes-256-cbc[1;31m"[0m[31m[0m,
        @digest[32m=[0m[31m[1;31m"[0m[31mSHA1[1;31m"[0m[31m[0m,
        @on_rotation[32m=[0m[1;36mnil[0m,
        @options[32m=[0m{[33m:cipher[0m=>[31m[1;31m"[0m[31maes-256-cbc[1;31m"[0m[31m[0m, [33m:serializer[0m=>[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m, [33m:digest[0m=>[31m[1;31m"[0m[31mSHA1[1;31m"[0m[31m[0m},
        @rotations[32m=[0m[],
        @secret[32m=[0m[31m[1;31m"[0m[31mp5l[1;35m\xD7[0m[31m[1;35m\xF6[0m[31mH[1;35m\xCE[0m[31mb[1;35m\x92[0m[31m]t[1;35m\xB6[0m[31m[1;35m\x7F[0m[31m[1;35m\xCE[0m[31mL[1;35m\x8B[0m[31m[1;35m\xA9[0m[31m[1;35m\xBC[0m[31m[1;35m\xE5[0m[31m[1;35m\xD3[0m[31m([1;35m\xBF[0m[31m[1;35m\xAE[0m[31m)q|z,[1;35m\xAA[0m[31mW[1;35m\x8F[0m[31m[1;35m\x1D[0m[31m[1;31m"[0m[31m[0m,
        @serializer[32m=[0m[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m,
        @sign_secret[32m=[0m
         [31m[1;31m"[0m[31m4/[1;35m\xB4[0m[31m[1;35m\xB7[0m[31mf{W[1;35m\x03[0m[31m[1;35m\x9F[0m[31m>[1;35m\xFA[0m[31mw[1;35m\xE0[0m[31mh[1;35m\xB4[0m[31m[1;35m\x96[0m[31m^`[1;35m\xAE[0m[31m[1;35m\x9A[0m[31mM[1;35m\xEE[0m[31m [1;35m\x95[0m[31m[1;35m\x1D[0m[31m[1;35m\xE9[0m[31mjZZ[1;35m\x9E[0m[31m[1;35m\xDB[0m[31m[1;35m\xBA[0m[31m[1;35m\xB6[0m[31m[1;35m\x03[0m[31m[1;35m\xFF[0m[31m[1;35m\x1E[0m[31mJ[1;35m\xC6[0m[31m0[1;35m\x1C[0m[31mT[1;35m\xF2[0m[31mW$[1;35m\xDB[0m[31m[1;35m\xD8[0m[31m[1;35m\x16[0m[31m:[1;35m\xD1[0m[31mJV[1;35m\x89[0m[31m[1;35m\xB5[0m[31m[1;35m\x14[0m[31ml[1;35m\x95[0m[31mTSS[1;35m\xB5[0m[31m[1;35m\xED[0m[31m[1;35m\x94[0m[31m[1;35m\xE1[0m[31m[1;35m\xAB[0m[31m[1;31m"[0m[31m[0m,
        @verifier[32m=[0m
         [32m#<ActiveSupport::MessageVerifier:0x00007db64063fc08[0m
          @digest[32m=[0m[31m[1;31m"[0m[31mSHA1[1;31m"[0m[31m[0m,
          @on_rotation[32m=[0m[1;36mnil[0m,
          @options[32m=[0m{[33m:digest[0m=>[31m[1;31m"[0m[31mSHA1[1;31m"[0m[31m[0m, [33m:serializer[0m=>[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m},
          @rotations[32m=[0m[],
          @secret[32m=[0m
           [31m[1;31m"[0m[31m4/[1;35m\xB4[0m[31m[1;35m\xB7[0m[31mf{W[1;35m\x03[0m[31m[1;35m\x9F[0m[31m>[1;35m\xFA[0m[31mw[1;35m\xE0[0m[31mh[1;35m\xB4[0m[31m[1;35m\x96[0m[31m^`[1;35m\xAE[0m[31m[1;35m\x9A[0m[31mM[1;35m\xEE[0m[31m [1;35m\x95[0m[31m[1;35m\x1D[0m[31m[1;35m\xE9[0m[31mjZZ[1;35m\x9E[0m[31m[1;35m\xDB[0m[31m[1;35m\xBA[0m[31m[1;35m\xB6[0m[31m[1;35m\x03[0m[31m[1;35m\xFF[0m[31m[1;35m\x1E[0m[31mJ[1;35m\xC6[0m[31m0[1;35m\x1C[0m[31mT[1;35m\xF2[0m[31mW$[1;35m\xDB[0m[31m[1;35m\xD8[0m[31m[1;35m\x16[0m[31m:[1;35m\xD1[0m[31mJV[1;35m\x89[0m[31m[1;35m\xB5[0m[31m[1;35m\x14[0m[31ml[1;35m\x95[0m[31mTSS[1;35m\xB5[0m[31m[1;35m\xED[0m[31m[1;35m\x94[0m[31m[1;35m\xE1[0m[31m[1;35m\xAB[0m[31m[1;31m"[0m[31m[0m,
          @serializer[32m=[0m[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m[32m>[0m[32m>[0m],
     @secret[32m=[0m[31m[1;31m"[0m[31m[1;35m\xF5[0m[31mG[1;35m\xA5[0m[31m[1;35m\xBF[0m[31m[1;35m\xC9[0m[31mdCDX&[1;35m\x8E[0m[31m[1;35m\xF1[0m[31m[1;35m\x98[0m[31m0[1;35m\xC2[0m[31mm[1;35m\xF6[0m[31mR[1;35m\xED[0m[31m[1;35m\x94[0m[31m[1;35m\xA7[0m[31m[1;35m\t[0m[31m[1;35m\xC6[0m[31m[1;35m\x9F[0m[31m[1;35m\x1D[0m[31m[1;35m\xE5[0m[31mq?[1;35m\x03[0m[31m[1;35m\xD6[0m[31m[1;35m\x81[0m[31m[1;35m\xF8[0m[31m[1;31m"[0m[31m[0m,
     @serializer[32m=[0m[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullSerializer[0m,
     @sign_secret[32m=[0m[1;36mnil[0m,
     @verifier[32m=[0m[1;34;4mActiveSupport[0m::[1;34;4mMessageEncryptor[0m::[1;34;4mNullVerifier[0m[32m>[0m,
   @parent_jar[32m=[0m[32m#<ActionDispatch::Cookies::CookieJar:0x00007db6406311f8[0m ...[32m>[0m[32m>[0m[32m>[0m
