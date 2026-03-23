.class public Lcom/roblox/client/signup/d;
.super Lcom/roblox/client/signup/e;
.source "SourceFile"


# static fields
.field private static i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/roblox/client/signup/d;->i:Ljava/util/HashMap;

    .line 39
    sget-object v0, Lcom/roblox/client/signup/d;->i:Ljava/util/HashMap;

    const-string v1, "UsernameTaken"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/roblox/client/signup/d;->i:Ljava/util/HashMap;

    const-string v1, "UsernameInvalid"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/roblox/client/signup/d;->i:Ljava/util/HashMap;

    const-string v1, "PasswordInvalid"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/roblox/client/signup/d;->i:Ljava/util/HashMap;

    const-string v1, "PasswordMatchesUsername"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/roblox/client/signup/d;->i:Ljava/util/HashMap;

    const-string v1, "DumbPassword"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/roblox/client/signup/d;->i:Ljava/util/HashMap;

    const-string v1, "GenderInvalid"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/roblox/client/signup/d;->i:Ljava/util/HashMap;

    const-string v1, "BirthdayInvalid"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/roblox/client/signup/d;->i:Ljava/util/HashMap;

    const-string v1, "StatusThrottled"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/roblox/client/signup/d;->i:Ljava/util/HashMap;

    const-string v1, "Captcha"

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/e$a;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p8}, Lcom/roblox/client/signup/e;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/e$a;)V

    .line 55
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    packed-switch p1, :pswitch_data_0

    .line 189
    const-string v0, "StatusServerError"

    :goto_0
    return-object v0

    .line 173
    :pswitch_0
    const-string v0, "Captcha"

    goto :goto_0

    .line 175
    :pswitch_1
    const-string v0, "StatusThrottled"

    goto :goto_0

    .line 177
    :pswitch_2
    const-string v0, "BirthdayInvalid"

    goto :goto_0

    .line 179
    :pswitch_3
    const-string v0, "UsernameInvalid"

    goto :goto_0

    .line 181
    :pswitch_4
    const-string v0, "UsernameTaken"

    goto :goto_0

    .line 183
    :pswitch_5
    const-string v0, "PasswordInvalid"

    goto :goto_0

    .line 185
    :pswitch_6
    const-string v0, "PasswordMatchesUsername"

    goto :goto_0

    .line 187
    :pswitch_7
    const-string v0, "DumbPassword"

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/roblox/client/signup/d;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Lorg/json/JSONArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 127
    if-eqz p2, :cond_4

    .line 128
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 130
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_1

    .line 132
    const-string v2, "code"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 133
    const-string v2, "roblox.signup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToSignupStatus: (new updated API) errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eq v1, v5, :cond_0

    .line 135
    invoke-direct {p0, v1}, Lcom/roblox/client/signup/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    const-string v1, "StatusJsonError"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v1

    .line 143
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 144
    const-string v2, "StatusJsonError"

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v2, "roblox.signup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException thrown while parsing response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    :cond_1
    :try_start_1
    const-string v1, "StatusJsonError"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 151
    new-instance v0, Lcom/roblox/client/signup/d$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/d$1;-><init>(Lcom/roblox/client/signup/d;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    :cond_3
    const-string v0, "roblox.signup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignUpApiTask.getErrorReason() errorList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_4
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/signup/j;
    .locals 7

    .prologue
    .line 69
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->signUpApiUrl()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual/range {p0 .. p5}, Lcom/roblox/client/signup/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getJsonContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p6, v2}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/roblox/client/http/j;->b()I

    move-result v2

    .line 74
    invoke-virtual {v1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v3, Lcom/roblox/client/signup/j;

    invoke-direct {v3}, Lcom/roblox/client/signup/j;-><init>()V

    .line 77
    iput v2, v3, Lcom/roblox/client/signup/j;->c:I

    .line 78
    iput-object v0, v3, Lcom/roblox/client/signup/j;->d:Ljava/lang/String;

    .line 79
    iput-object v1, v3, Lcom/roblox/client/signup/j;->e:Ljava/lang/String;

    .line 82
    :try_start_0
    const-string v4, "roblox.signup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SignUpApiTask.doSignupRequest() url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", code:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", body:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/16 v0, 0xc8

    if-ne v2, v0, :cond_1

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v1, "userId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "userId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/roblox/client/signup/j;->f:J

    .line 87
    iget-object v0, v3, Lcom/roblox/client/signup/j;->a:Ljava/util/ArrayList;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :goto_0
    return-object v3

    .line 90
    :cond_0
    iget-object v0, v3, Lcom/roblox/client/signup/j;->a:Ljava/util/ArrayList;

    const-string v1, "StatusUserIdInvalid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    iget-object v0, v3, Lcom/roblox/client/signup/j;->a:Ljava/util/ArrayList;

    const-string v1, "StatusJsonError"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    const/16 v0, 0x193

    if-ne v2, v0, :cond_2

    .line 94
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v1, "failureDetails"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 99
    iget-object v1, v3, Lcom/roblox/client/signup/j;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/d;->a(Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 101
    :cond_2
    const/16 v0, 0x1ad

    if-ne v2, v0, :cond_3

    .line 103
    iget-object v0, v3, Lcom/roblox/client/signup/j;->a:Ljava/util/ArrayList;

    const-string v1, "StatusThrottled"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, v3, Lcom/roblox/client/signup/j;->a:Ljava/util/ArrayList;

    const-string v1, "StatusServerError"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/signup/j;
    .locals 7

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/roblox/client/signup/d;->b()Ljava/lang/String;

    move-result-object v3

    .line 61
    iget v0, p0, Lcom/roblox/client/signup/d;->e:I

    iget v1, p0, Lcom/roblox/client/signup/d;->f:I

    iget v2, p0, Lcom/roblox/client/signup/d;->d:I

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/d;->a(III)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 62
    invoke-virtual/range {v0 .. v6}, Lcom/roblox/client/signup/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/signup/j;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 118
    new-instance v0, Lcom/roblox/client/http/post/SignUpRequestBody;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/http/post/SignUpRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/roblox/client/b;->aj()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/http/post/SignUpRequestBody;->setDeviceHandle(Ljava/lang/String;)V

    .line 122
    :cond_0
    new-instance v1, Lcom/google/gson/e;

    invoke-direct {v1}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/e;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
