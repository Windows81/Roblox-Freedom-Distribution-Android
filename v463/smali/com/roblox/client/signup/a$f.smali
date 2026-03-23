.class Lcom/roblox/client/signup/a$f;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/a$d;
.implements Lcom/roblox/client/signup/a$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/roblox/client/signup/a$d;",
        "Lcom/roblox/client/signup/a$h;"
    }
.end annotation


# instance fields
.field a:Lcom/roblox/client/signup/a$g;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lorg/json/JSONObject;

.field f:I

.field final synthetic g:Lcom/roblox/client/signup/a;

.field private h:Lcom/roblox/client/signup/a/e;

.field private i:Lcom/roblox/client/signup/a/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$g;)V
    .locals 9

    const-string v0, "UTF-8"

    const-string v1, "signup"

    const-string v2, "EncodingError"

    const-string v3, "SignUpPreValidation"

    .line 982
    iput-object p1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v4, 0x0

    .line 972
    iput-object v4, p0, Lcom/roblox/client/signup/a$f;->b:Ljava/lang/String;

    .line 973
    iput-object v4, p0, Lcom/roblox/client/signup/a$f;->c:Ljava/lang/String;

    .line 974
    iput-object v4, p0, Lcom/roblox/client/signup/a$f;->d:Ljava/lang/String;

    .line 975
    iput-object v4, p0, Lcom/roblox/client/signup/a$f;->e:Lorg/json/JSONObject;

    const/4 v4, -0x1

    .line 976
    iput v4, p0, Lcom/roblox/client/signup/a$f;->f:I

    .line 983
    iput-object p2, p0, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$g;

    const-string p2, "NotUTF8"

    .line 986
    invoke-virtual {p1}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "username"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 990
    :try_start_1
    invoke-static {p1}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/roblox/client/signup/a$f;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v7, "password"

    .line 1000
    invoke-static {p1}, Lcom/roblox/client/signup/a;->m(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/a$f;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1002
    :catch_0
    iget-object v0, p1, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    sget v8, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordInvalidCharacters:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v8, v6}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 1003
    invoke-direct {p0}, Lcom/roblox/client/signup/a$f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-static {v1, v7, p2, v5}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1007
    :goto_0
    invoke-static {}, Lcom/roblox/client/b;->cd()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1008
    new-instance p2, Lcom/roblox/client/signup/a/c;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->x(Lcom/roblox/client/signup/a;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/roblox/client/signup/a/c;-><init>(Lcom/roblox/client/s/f;Lcom/roblox/client/signup/a$h;)V

    iput-object p2, p0, Lcom/roblox/client/signup/a$f;->i:Lcom/roblox/client/signup/a/f;

    goto :goto_1

    .line 1010
    :cond_0
    new-instance p2, Lcom/roblox/client/signup/a/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->x(Lcom/roblox/client/signup/a;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/roblox/client/signup/a/a;-><init>(Lcom/roblox/client/s/f;Lcom/roblox/client/signup/a$h;)V

    iput-object p2, p0, Lcom/roblox/client/signup/a$f;->i:Lcom/roblox/client/signup/a/f;

    .line 1013
    :goto_1
    invoke-static {}, Lcom/roblox/client/b;->ce()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1014
    new-instance p2, Lcom/roblox/client/signup/a/d;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->x(Lcom/roblox/client/signup/a;)Lcom/roblox/client/s/f;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/roblox/client/signup/a/d;-><init>(Lcom/roblox/client/s/f;Lcom/roblox/client/signup/a$d;)V

    iput-object p2, p0, Lcom/roblox/client/signup/a$f;->h:Lcom/roblox/client/signup/a/e;

    goto :goto_2

    .line 1016
    :cond_1
    new-instance p2, Lcom/roblox/client/signup/a/b;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->x(Lcom/roblox/client/signup/a;)Lcom/roblox/client/s/f;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/roblox/client/signup/a/b;-><init>(Lcom/roblox/client/s/f;Lcom/roblox/client/signup/a$d;)V

    iput-object p2, p0, Lcom/roblox/client/signup/a$f;->h:Lcom/roblox/client/signup/a/e;

    :goto_2
    return-void

    :catch_1
    const-string v7, ""

    .line 992
    :catch_2
    invoke-static {p1}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    sget v8, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidCharacters:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v8, v6}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 993
    invoke-direct {p0}, Lcom/roblox/client/signup/a$f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    invoke-static {v1, v7, p2, v5}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .line 1141
    iget-object v0, p0, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$g;

    sget-object v1, Lcom/roblox/client/signup/a$g;->a:Lcom/roblox/client/signup/a$g;

    if-ne v0, v1, :cond_0

    const-string v0, "Username"

    goto :goto_0

    :cond_0
    const-string v0, "Password"

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 1022
    iget-object p1, p0, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$g;

    sget-object v0, Lcom/roblox/client/signup/a$g;->a:Lcom/roblox/client/signup/a$g;

    if-ne p1, v0, :cond_0

    const-string p1, "username"

    goto :goto_0

    :cond_0
    const-string p1, "password"

    .line 1026
    :goto_0
    invoke-virtual {p0}, Lcom/roblox/client/signup/a$f;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 1030
    :cond_1
    sget-object v0, Lcom/roblox/client/signup/a$18;->a:[I

    iget-object v2, p0, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$g;

    invoke-virtual {v2}, Lcom/roblox/client/signup/a$g;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_1

    .line 1039
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/signup/a$f;->i:Lcom/roblox/client/signup/a/f;

    iget-object v3, p0, Lcom/roblox/client/signup/a$f;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/roblox/client/signup/a$f;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/roblox/client/signup/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object v0

    .line 1040
    invoke-virtual {v0}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/roblox/client/signup/a$f;->d:Ljava/lang/String;

    .line 1041
    invoke-virtual {v0}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    iput v0, p0, Lcom/roblox/client/signup/a$f;->f:I

    goto :goto_1

    .line 1033
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->t(Lcom/roblox/client/signup/a;)I

    move-result v0

    iget-object v3, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v3}, Lcom/roblox/client/signup/a;->u(Lcom/roblox/client/signup/a;)I

    move-result v3

    iget-object v4, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v4}, Lcom/roblox/client/signup/a;->s(Lcom/roblox/client/signup/a;)I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/roblox/client/signup/d;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/ae/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    iget-object v3, p0, Lcom/roblox/client/signup/a$f;->h:Lcom/roblox/client/signup/a/e;

    iget-object v4, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v4}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Signup"

    invoke-virtual {v3, v4, v0, v5}, Lcom/roblox/client/signup/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object v0

    .line 1035
    invoke-virtual {v0}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/roblox/client/signup/a$f;->d:Ljava/lang/String;

    .line 1036
    invoke-virtual {v0}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    iput v0, p0, Lcom/roblox/client/signup/a$f;->f:I

    .line 1045
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/signup/a$f;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1048
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/roblox/client/signup/a$f;->d:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/roblox/client/signup/a$f;->e:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    goto :goto_2

    :catch_0
    const-string v0, "ValidationJSONException"

    goto :goto_2

    :cond_4
    const-string v0, "NoResponse"

    .line 1057
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "signup"

    .line 1058
    invoke-static {v3, p1, v0, v2}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    return-object v1
.end method

.method public a()V
    .locals 5

    .line 1160
    iget-object v0, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    sget-object v1, Lcom/roblox/client/signup/a$e;->c:Lcom/roblox/client/signup/a$e;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$e;)Lcom/roblox/client/signup/a$e;

    .line 1161
    iget-object v0, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-virtual {v2}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameAlreadyInUse:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->h()V

    return-void
.end method

.method public a(Lcom/roblox/client/signup/a$e;Ljava/lang/Integer;)V
    .locals 3

    .line 1146
    iget-object v0, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v0, p1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$e;)Lcom/roblox/client/signup/a$e;

    .line 1147
    sget-object v0, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1148
    iget-object p1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    iget-object v2, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-virtual {v2}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 1149
    iget-object p1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object p1

    iget-object p2, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {p2}, Lcom/roblox/client/signup/a;->i(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$a;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1151
    iget-object p1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->i()V

    goto :goto_0

    .line 1153
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    iget-object v2, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-virtual {v2}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 1154
    iget-object p1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 9

    .line 1066
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1068
    invoke-direct {p0}, Lcom/roblox/client/signup/a$f;->b()Ljava/lang/String;

    move-result-object p1

    .line 1072
    iget-object v0, p0, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$g;

    sget-object v1, Lcom/roblox/client/signup/a$g;->a:Lcom/roblox/client/signup/a$g;

    const-string v2, "SignUpPreValidation"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->y(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$f;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string v0, "UsernameRace"

    .line 1073
    invoke-static {v2, p1, v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$g;

    sget-object v1, Lcom/roblox/client/signup/a$g;->a:Lcom/roblox/client/signup/a$g;

    if-ne v0, v1, :cond_1

    const-string v0, "username"

    goto :goto_0

    :cond_1
    const-string v0, "password"

    .line 1081
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-virtual {v1}, Lcom/roblox/client/signup/a;->r()Landroidx/fragment/app/c;

    move-result-object v1

    const-string v3, "signup"

    const/4 v4, 0x1

    if-nez v1, :cond_2

    const-string v1, "WindowClosed"

    .line 1085
    invoke-static {v3, v0, v1, v4}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ActivityNull"

    .line 1086
    invoke-static {v2, p1, v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1090
    :cond_2
    iget-object v5, p0, Lcom/roblox/client/signup/a$f;->d:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    if-nez v5, :cond_5

    .line 1091
    iget-object v5, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-virtual {v5}, Lcom/roblox/client/signup/a;->ap()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1092
    iget-object v5, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    sget v8, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_ErrorTryAgain:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v8, v6}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/roblox/client/signup/a;->c(Ljava/lang/String;)V

    :cond_3
    const-string v1, "ResponseNull"

    .line 1094
    invoke-static {v2, p1, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object p1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->x(Lcom/roblox/client/signup/a;)Lcom/roblox/client/s/f;

    move-result-object p1

    iget-object v1, p0, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$g;

    sget-object v2, Lcom/roblox/client/signup/a$g;->a:Lcom/roblox/client/signup/a$g;

    if-ne v1, v2, :cond_4

    const-string v1, "Android-AppSignup-Validation-UsernameResponseNull"

    goto :goto_1

    :cond_4
    const-string v1, "Android-AppSignup-Validation-PasswordResponseNull"

    :goto_1
    invoke-virtual {p1, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    const-string p1, "NoResponse"

    goto :goto_3

    .line 1100
    :cond_5
    iget-object v5, p0, Lcom/roblox/client/signup/a$f;->e:Lorg/json/JSONObject;

    if-nez v5, :cond_7

    .line 1101
    iget-object v5, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    sget v8, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_ErrorTryAgain:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v8, v6}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/roblox/client/signup/a;->c(Ljava/lang/String;)V

    .line 1102
    iget-object v1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->x(Lcom/roblox/client/signup/a;)Lcom/roblox/client/s/f;

    move-result-object v1

    iget-object v5, p0, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$g;

    sget-object v6, Lcom/roblox/client/signup/a$g;->a:Lcom/roblox/client/signup/a$g;

    if-ne v5, v6, :cond_6

    const-string v5, "Android-AppSignup-Validation-UsernameJsonNull"

    goto :goto_2

    :cond_6
    const-string v5, "Android-AppSignup-Validation-PasswordJsonNull"

    :goto_2
    invoke-virtual {v1, v5}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    const-string v1, "JsonNull"

    .line 1106
    invoke-static {v2, p1, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "JSONParseFailure"

    goto :goto_3

    :cond_7
    move-object p1, v7

    .line 1110
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1111
    iget-object v1, p0, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$g;

    sget-object v2, Lcom/roblox/client/signup/a$g;->a:Lcom/roblox/client/signup/a$g;

    if-ne v1, v2, :cond_8

    .line 1113
    iget-object v1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    sget-object v2, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    invoke-static {v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$e;)Lcom/roblox/client/signup/a$e;

    .line 1114
    iget-object v1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 1116
    :cond_8
    invoke-static {v3, v0, p1, v4}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1120
    :cond_9
    sget-object v1, Lcom/roblox/client/signup/a$18;->a:[I

    iget-object v2, p0, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$g;

    invoke-virtual {v2}, Lcom/roblox/client/signup/a$g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v4, :cond_b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    goto :goto_4

    .line 1127
    :cond_a
    iget-object p1, p0, Lcom/roblox/client/signup/a$f;->i:Lcom/roblox/client/signup/a/f;

    iget v1, p0, Lcom/roblox/client/signup/a$f;->f:I

    iget-object v2, p0, Lcom/roblox/client/signup/a$f;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v2}, Lcom/roblox/client/signup/a/f;->a(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 1128
    iget-object v1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->n(Lcom/roblox/client/signup/a;)Z

    goto :goto_4

    .line 1122
    :cond_b
    iget-object p1, p0, Lcom/roblox/client/signup/a$f;->h:Lcom/roblox/client/signup/a/e;

    iget v1, p0, Lcom/roblox/client/signup/a$f;->f:I

    iget-object v2, p0, Lcom/roblox/client/signup/a$f;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v2}, Lcom/roblox/client/signup/a/e;->a(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 1123
    iget-object v1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->n(Lcom/roblox/client/signup/a;)Z

    .line 1133
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1134
    invoke-static {v3, v0, v4}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 1136
    :cond_c
    invoke-static {v3, v0, p1, v4}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_5
    return-void
.end method

.method public b(Lcom/roblox/client/signup/a$e;Ljava/lang/Integer;)V
    .locals 3

    .line 1167
    iget-object v0, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-static {v0, p1}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$e;)Lcom/roblox/client/signup/a$e;

    .line 1168
    sget-object v0, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    if-ne p1, v0, :cond_0

    .line 1169
    iget-object p1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    iget-object p2, p1, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 1171
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    iget-object v0, p1, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    iget-object v1, p0, Lcom/roblox/client/signup/a$f;->g:Lcom/roblox/client/signup/a;

    invoke-virtual {v1}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 968
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a$f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 968
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a$f;->a(Ljava/lang/Void;)V

    return-void
.end method
