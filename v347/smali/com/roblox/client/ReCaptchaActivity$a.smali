.class Lcom/roblox/client/ReCaptchaActivity$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/ReCaptchaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/roblox/client/http/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ReCaptchaActivity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method constructor <init>(Lcom/roblox/client/ReCaptchaActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/roblox/client/ReCaptchaActivity$a;->a:Lcom/roblox/client/ReCaptchaActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/roblox/client/ReCaptchaActivity$a;->b:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lcom/roblox/client/ReCaptchaActivity$a;->c:Ljava/lang/String;

    .line 220
    iput-object p4, p0, Lcom/roblox/client/ReCaptchaActivity$a;->d:Ljava/lang/String;

    .line 221
    iput p5, p0, Lcom/roblox/client/ReCaptchaActivity$a;->e:I

    .line 222
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/http/j;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 227
    const-string v1, "username=%s&recaptcha_challenge_field=%s&recaptcha_response_field=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/roblox/client/ReCaptchaActivity$a;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/roblox/client/ReCaptchaActivity$a;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/roblox/client/ReCaptchaActivity$a;->d:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/roblox/client/util/n;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 231
    iget v1, p0, Lcom/roblox/client/ReCaptchaActivity$a;->e:I

    if-ne v1, v5, :cond_1

    .line 232
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->loginCaptchaValidateUrl()Ljava/lang/String;

    move-result-object v1

    .line 239
    :goto_0
    if-eqz v1, :cond_0

    .line 240
    invoke-static {v1, v2, v0}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/http/j;

    move-result-object v0

    .line 243
    :cond_0
    return-object v0

    .line 234
    :cond_1
    iget v1, p0, Lcom/roblox/client/ReCaptchaActivity$a;->e:I

    if-ne v1, v6, :cond_2

    .line 235
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->signupCaptchaValidateUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method protected a(Lcom/roblox/client/http/j;)V
    .locals 3

    .prologue
    .line 249
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity$a;->a:Lcom/roblox/client/ReCaptchaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/ReCaptchaActivity;->setResult(I)V

    .line 252
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity$a;->a:Lcom/roblox/client/ReCaptchaActivity;

    invoke-virtual {v0}, Lcom/roblox/client/ReCaptchaActivity;->finish()V

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity$a;->a:Lcom/roblox/client/ReCaptchaActivity;

    const v1, 0x7f0e0029

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/ReCaptchaActivity;->a(II)V

    .line 256
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity$a;->a:Lcom/roblox/client/ReCaptchaActivity;

    invoke-static {v0}, Lcom/roblox/client/ReCaptchaActivity;->b(Lcom/roblox/client/ReCaptchaActivity;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/ReCaptchaActivity$a;->a([Ljava/lang/Void;)Lcom/roblox/client/http/j;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 210
    check-cast p1, Lcom/roblox/client/http/j;

    invoke-virtual {p0, p1}, Lcom/roblox/client/ReCaptchaActivity$a;->a(Lcom/roblox/client/http/j;)V

    return-void
.end method
