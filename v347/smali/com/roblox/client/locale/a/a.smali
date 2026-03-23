.class public Lcom/roblox/client/locale/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/roblox/client/locale/d;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v0, "rbx.locale"

    const-string v1, " api failure"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "Api call to fetch user locale values from server failed"

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v2, v2, v2, p1}, Lcom/roblox/client/locale/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/locale/d;)V

    .line 64
    return-void
.end method

.method a(Ljava/lang/String;ILcom/roblox/client/locale/d;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 72
    const-string v1, "rbx.locale"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,response code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    .line 75
    :try_start_0
    new-instance v3, Lcom/roblox/client/locale/b/a;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1}, Lcom/roblox/client/locale/b/a;-><init>(Lorg/json/JSONObject;)V

    .line 76
    invoke-virtual {v3}, Lcom/roblox/client/locale/b/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v3}, Lcom/roblox/client/locale/b/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v3}, Lcom/roblox/client/locale/b/a;->b()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_0
    const-string v3, "rbx.locale"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loginSignUpLocale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v3, "rbx.locale"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generalExperienceLocale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v3, "rbx.locale"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ugcLocale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0, v2, v1, v0, p3}, Lcom/roblox/client/locale/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/locale/d;)V

    .line 97
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 80
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException thrown while parsing response to fetch user loginSignUpLocale, generalExperienceLocale and ugcLocale from server. Exception message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    move-object v1, v0

    move-object v2, v0

    .line 85
    goto :goto_0

    .line 87
    :cond_0
    const-string v1, "rbx.locale"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response code != 200, response code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received for getUserLocale api call from server."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    move-object v1, v0

    move-object v2, v0

    .line 91
    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/locale/d;)V
    .locals 3

    .prologue
    .line 101
    if-eqz p4, :cond_0

    .line 102
    invoke-static {p1}, Lcom/roblox/client/locale/c;->a(Ljava/lang/String;)Lcom/roblox/client/locale/c;

    move-result-object v0

    invoke-static {p2}, Lcom/roblox/client/locale/c;->a(Ljava/lang/String;)Lcom/roblox/client/locale/c;

    move-result-object v1

    invoke-static {p3}, Lcom/roblox/client/locale/c;->a(Ljava/lang/String;)Lcom/roblox/client/locale/c;

    move-result-object v2

    invoke-interface {p4, v0, v1, v2}, Lcom/roblox/client/locale/d;->a(Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/c;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "OnLocaleValuesRetrievedListener received is null"

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Locale;Lcom/roblox/client/locale/d;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 33
    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v2, "rbx.locale"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceLocale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device language is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", device Country is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 41
    :cond_1
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v2

    invoke-static {}, Lcom/roblox/client/http/k;->a()Lcom/roblox/client/http/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/http/k;->b()Lb/w;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/roblox/platform/e;->a(Lb/w;)Lcom/roblox/platform/http/c/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/roblox/platform/http/c/d;->a(Ljava/lang/String;)Ld/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/locale/a/a$1;

    invoke-direct {v1, p0, p2}, Lcom/roblox/client/locale/a/a$1;-><init>(Lcom/roblox/client/locale/a/a;Lcom/roblox/client/locale/d;)V

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_2
    const-string v0, "rbx.locale"

    const-string v1, "device locale null"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v0, "device Locale is null"

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v2, v2, v2, p2}, Lcom/roblox/client/locale/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/locale/d;)V

    goto :goto_0
.end method
