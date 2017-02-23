@object
Feature: the object feature

  Scenario Outline:
    # PUT Object
    When put object with key "<key>"
    Then put object status code is 201

    # Copy Object
    When copy object with key "<key>"
    Then copy object status code is 201

    # Move Object
    When move object with key "<key>"
    Then move object status code is 201

    # GET Object
    When get object with key "<key>"
    Then get object status code is 200
    And get object content length is 1048576

    # GET Object with Content-Type
    When get object "<key>" with content type "video/mp4; charset=utf8"
    Then get object content type is "video/mp4; charset=utf8"

    # GET Object with Query Signature
    When get object "<key>" with query signature
    Then get object with query signature content length is 1048576

    # Head Object
    When head object with key "<key>"
    Then head object status code is 200

    # Options Object
    When options object "<key>" with method "GET" and origin "qingcloud.com"
    Then options object status code is 200

    # DELETE Object
    When delete object with key "<key>"
    Then delete object status code is 204
    When delete the move object with key "<key>"
    Then delete the move object status code is 204

    Examples: Object keys
      | key |
      # ASCII
      | test_object |
      # Non-ASCII
      | 中文测试 |
      | 田中さんにあげて下さい |
      | パーティーへ行かないか |
      | 和製漢語 |
      | 사회과학원 어학연구소 |
      | 찦차를 타고 온 펲시맨과 쑛다리 똠방각하 |
      | 社會科學院語學研究所 |
      | 울란바토르 |
      | 𠜎𠜱𠝹𠱓𠱸𠲖𠳏 |
      # Special Characters
      | ,./;'[]\-= |
      | <>?:"{}\|_+ |
      | !@#$%^&*()`~ |
      # Quotation Marks
      | ' |
      | " |
      | '' |
      | "" |
      | '"' |
      | "''''"'" |
      | "'"'"''''" |
      # 1023 Byte
      | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa  |
      # Emoji
      | 😍 |
      | 👩🏽 |
      | 👾 🙇 💁 🙅 🙆 🙋 🙎 🙍 |
      | 🐵 🙈 🙉 🙊 |
      | ✋🏿 💪🏿 👐🏿 🙌🏿 👏🏿 🙏🏿 |
      | 🚾 🆒 🆓 🆕 🆖 🆗 🆙 🏧 |
      | 0️⃣ 1️⃣ 2️⃣ 3️⃣ 4️⃣ 5️⃣ 6️⃣ 7️⃣ 8️⃣ 9️⃣ 🔟 |
      | ❤️ 💔 💌 💕 💞 💓 💗 💖 💘 💝 💟 💜 💛 💚 💙 |
      # Unicode Numbers
      | １２３ |
      | ١٢٣ |
      # Right-To-Left Strings
      | ثم نفس سقطت وبالتحديد،/, جزيرتي باستخدام أن دنو. إذ هنا؟ الستار وتنصيب كان. أهّل ايطاليا،/ بريطانيا-فرنسا قد أخذ. سليمان، إتفاقية بين ما/, يذكر الحدود أي بعد, معاملة بولندا، الإطلاق عل إيو. |
      | בְּרֵאשִׁית, בָּרָא אֱלֹהִים, אֵת הַשָּׁמַיִם, וְאֵת הָאָרֶץ |
      | הָיְתָהtestالصفحات التّحول |
      | ﷽ |
      | ﷺ |
      | مُنَاقَشَةُ سُبُلِ اِسْتِخْدَامِ اللُّغَةِ فِي النُّظُمِ الْقَائِمَةِ وَفِيم يَخُصَّ التَّطْبِيقَاتُ الْحاسُوبِيَّةُ،  |
