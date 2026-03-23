.class public Lcom/roblox/client/ab/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLcom/roblox/client/ab/a;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->f()Lcom/roblox/platform/http/c/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/roblox/platform/http/c/b;->a(J)Le/b;

    move-result-object p1

    new-instance p2, Lcom/roblox/client/ab/a/a$1;

    invoke-direct {p2, p0, p3}, Lcom/roblox/client/ab/a/a$1;-><init>(Lcom/roblox/client/ab/a/a;Lcom/roblox/client/ab/a;)V

    invoke-interface {p1, p2}, Le/b;->a(Le/d;)V

    return-void
.end method

.method a(Lcom/roblox/client/ab/a;)V
    .locals 2

    const-string v0, "rbx.accountsettings"

    const-string v1, " api failure"

    .line 39
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Api call to fetch user theme values from server failed"

    .line 40
    invoke-static {v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/ab/a/a;->a(Lcom/roblox/client/ab/a;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/roblox/client/ab/a;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1, p2}, Lcom/roblox/client/ab/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "OnUserSelectedThemeRetrievedListener received is null"

    .line 69
    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method a(Ljava/lang/String;ILcom/roblox/client/ab/a;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    .line 48
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance p1, Lcom/roblox/client/ab/a/b;

    invoke-direct {p1, p2}, Lcom/roblox/client/ab/a/b;-><init>(Lorg/json/JSONObject;)V

    .line 50
    invoke-virtual {p1}, Lcom/roblox/client/ab/a/b;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONException thrown while parsing response to fetch user theme from server. Exception message: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response code != 200, response code = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rbx.accountsettings"

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected response code: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " received for getUserSelectedTheme api call from server."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    .line 62
    :goto_0
    invoke-virtual {p0, p3, v0}, Lcom/roblox/client/ab/a/a;->a(Lcom/roblox/client/ab/a;Ljava/lang/String;)V

    return-void
.end method
