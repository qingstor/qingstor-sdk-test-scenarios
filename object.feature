@object
Feature: the object feature

  # PUT Object
  Scenario: create the object
    When put object with key
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
      | <>?:"{}|_+ |
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
      | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa |
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
      | ثم نفس سقطت وبالتحديد،, جزيرتي باستخدام أن دنو. إذ هنا؟ الستار وتنصيب كان. أهّل ايطاليا، بريطانيا-فرنسا قد أخذ. سليمان، إتفاقية بين ما, يذكر الحدود أي بعد, معاملة بولندا، الإطلاق عل إيو. |
      | בְּרֵאשִׁית, בָּרָא אֱלֹהִים, אֵת הַשָּׁמַיִם, וְאֵת הָאָרֶץ |
      | הָיְתָהtestالصفحات التّحول |
      | ﷽ |
      | ﷺ |
      | مُنَاقَشَةُ سُبُلِ اِسْتِخْدَامِ اللُّغَةِ فِي النُّظُمِ الْقَائِمَةِ وَفِيم يَخُصَّ التَّطْبِيقَاتُ الْحاسُوبِيَّةُ،  |
    Then put object status code is 201

  # Copy Object
  Scenario: copy the object
    When copy object with key
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
      | <>?:"{}|_+ |
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
      | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa |
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
      | ثم نفس سقطت وبالتحديد،, جزيرتي باستخدام أن دنو. إذ هنا؟ الستار وتنصيب كان. أهّل ايطاليا، بريطانيا-فرنسا قد أخذ. سليمان، إتفاقية بين ما, يذكر الحدود أي بعد, معاملة بولندا، الإطلاق عل إيو. |
      | בְּרֵאשִׁית, בָּרָא אֱלֹהִים, אֵת הַשָּׁמַיִם, וְאֵת הָאָרֶץ |
      | הָיְתָהtestالصفحات التّحول |
      | ﷽ |
      | ﷺ |
      | مُنَاقَشَةُ سُبُلِ اِسْتِخْدَامِ اللُّغَةِ فِي النُّظُمِ الْقَائِمَةِ وَفِيم يَخُصَّ التَّطْبِيقَاتُ الْحاسُوبِيَّةُ، |
    Then copy object status code is 201

  # Move Object
  Scenario: move the copy object
    When move object with key
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
      | <>?:"{}|_+ |
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
      | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa |
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
      | ثم نفس سقطت وبالتحديد،, جزيرتي باستخدام أن دنو. إذ هنا؟ الستار وتنصيب كان. أهّل ايطاليا، بريطانيا-فرنسا قد أخذ. سليمان، إتفاقية بين ما, يذكر الحدود أي بعد, معاملة بولندا، الإطلاق عل إيو. |
      | בְּרֵאשִׁית, בָּרָא אֱלֹהִים, אֵת הַשָּׁמַיִם, וְאֵת הָאָרֶץ |
      | הָיְתָהtestالصفحات التّحول |
      | ﷽ |
      | ﷺ |
      | مُنَاقَشَةُ سُبُلِ اِسْتِخْدَامِ اللُّغَةِ فِي النُّظُمِ الْقَائِمَةِ وَفِيم يَخُصَّ التَّطْبِيقَاتُ الْحاسُوبِيَّةُ، |
    Then move object status code is 201

  # GET Object
  Scenario: get the object
    When get object
    Then get object status code is 200
    And get object content length is 1048576

  # GET Object with Content-Type
  Scenario: get the object with content type
    When get object with content type "video/mp4; charset=utf8"
    Then get object content type is "video/mp4; charset=utf8"

  # GET Object with Query Signature
  Scenario: get the object with query signature
    When get object with query signature
    Then get object with query signature content length is 1048576

  # Head Object
  Scenario: head the object
    When head object
    Then head object status code is 200

  # Options Object
  Scenario: options the object
    When options object with method "GET" and origin "qingcloud.com"
    Then options object status code is 200

  # DELETE Object
  Scenario: delete the object
    When delete object
    Then delete object status code is 204

  Scenario: delete the move object
    When delete the move object
    Then delete the move object status code is 204
