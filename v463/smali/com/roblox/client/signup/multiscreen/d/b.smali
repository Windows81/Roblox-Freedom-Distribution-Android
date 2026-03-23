.class public abstract Lcom/roblox/client/signup/multiscreen/d/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/roblox/client/signup/multiscreen/a/a;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lorg/json/JSONObject;

.field e:I

.field protected f:Lcom/roblox/client/signup/multiscreen/b/s;

.field protected g:Lcom/roblox/client/signup/multiscreen/b/x;

.field protected h:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;Lcom/roblox/client/signup/multiscreen/b/s;Lcom/roblox/client/signup/multiscreen/b/x;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/d/b;->b:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/d/b;->c:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/d/b;->d:Lorg/json/JSONObject;

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/roblox/client/signup/multiscreen/d/b;->e:I

    .line 34
    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/d/b;->f:Lcom/roblox/client/signup/multiscreen/b/s;

    .line 35
    iput-object p4, p0, Lcom/roblox/client/signup/multiscreen/d/b;->g:Lcom/roblox/client/signup/multiscreen/b/x;

    .line 36
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/d/b;->a:Lcom/roblox/client/signup/multiscreen/a/a;

    .line 37
    iget p2, p2, Lcom/roblox/client/signup/multiscreen/a/a;->b:I

    iget-object p3, p0, Lcom/roblox/client/signup/multiscreen/d/b;->a:Lcom/roblox/client/signup/multiscreen/a/a;

    iget p3, p3, Lcom/roblox/client/signup/multiscreen/a/a;->c:I

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/d/b;->a:Lcom/roblox/client/signup/multiscreen/a/a;

    iget v0, v0, Lcom/roblox/client/signup/multiscreen/a/a;->a:I

    .line 38
    invoke-virtual {p4, p2, p3, v0}, Lcom/roblox/client/signup/multiscreen/b/x;->a(III)Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-static {p2}, Lcom/roblox/client/ae/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/d/b;->h:Ljava/lang/String;

    :try_start_0
    const-string p2, "UTF-8"

    .line 42
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 44
    :catch_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->f:Lcom/roblox/client/signup/multiscreen/b/s;

    const-string p2, "EncodingError"

    invoke-virtual {p1, p2}, Lcom/roblox/client/signup/multiscreen/b/s;->a(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->f:Lcom/roblox/client/signup/multiscreen/b/s;

    const/4 p2, 0x1

    const-string p3, "NotUTF8"

    invoke-virtual {p1, p3, p2}, Lcom/roblox/client/signup/multiscreen/b/s;->a(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/roblox/client/http/j;
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/d/b;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/d/b;->a()Lcom/roblox/client/http/j;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v1

    iput v1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->e:I

    .line 60
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 64
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->c:Ljava/lang/String;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, ""

    goto :goto_0

    :catch_0
    const-string p1, "ValidationJSONException"

    goto :goto_0

    :cond_1
    const-string p1, "NoResponse"

    .line 72
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->f:Lcom/roblox/client/signup/multiscreen/b/s;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/roblox/client/signup/multiscreen/b/s;->a(Ljava/lang/String;Z)V

    :cond_2
    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->c:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->f:Lcom/roblox/client/signup/multiscreen/b/s;

    const-string v0, "ResponseNull"

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/b/s;->a(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->f:Lcom/roblox/client/signup/multiscreen/b/s;

    const-string v0, "Android-AppSignup-Validation-UsernameResponseNull"

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/b/s;->c(Ljava/lang/String;)V

    const-string p1, "NoResponse"

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->d:Lorg/json/JSONObject;

    if-nez p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->f:Lcom/roblox/client/signup/multiscreen/b/s;

    const-string v0, "Android-AppSignup-Validation-UsernameJsonNull"

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/b/s;->c(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/d/b;->f:Lcom/roblox/client/signup/multiscreen/b/s;

    const-string v0, "JsonNull"

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/b/s;->a(Ljava/lang/String;)V

    const-string p1, "JSONParseFailure"

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 95
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/d/b;->g:Lcom/roblox/client/signup/multiscreen/b/x;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/d/b;->b:Ljava/lang/String;

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/h$a;->o:Lcom/roblox/client/signup/multiscreen/a/h$a;

    .line 97
    invoke-static {v2, v3}, Lcom/roblox/client/signup/multiscreen/a/h;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/h$a;)Lcom/roblox/client/signup/multiscreen/a/h;

    move-result-object v2

    .line 96
    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    .line 102
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/d/b;->f:Lcom/roblox/client/signup/multiscreen/b/s;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/signup/multiscreen/b/s;->a(Ljava/lang/String;Z)V

    return-void

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/d/b;->b()Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/d/b;->f:Lcom/roblox/client/signup/multiscreen/b/s;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/signup/multiscreen/b/s;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method abstract b()Ljava/lang/String;
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/d/b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/d/b;->a(Ljava/lang/Void;)V

    return-void
.end method
