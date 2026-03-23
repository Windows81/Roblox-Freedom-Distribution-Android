.class Lcom/roblox/client/ac/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/ac/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/ac/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ac/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/ac/a;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/roblox/client/ac/a$4;->a:Lcom/roblox/client/ac/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fragment2SV"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/roblox/client/ac/a$4;->a:Lcom/roblox/client/ac/a;

    invoke-virtual {v0}, Lcom/roblox/client/ac/a;->p()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 239
    sget p1, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_SystemErrorReturnToLogin:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 230
    :pswitch_0
    sget p1, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_SystemErrorReturnToLogin:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 233
    :pswitch_1
    sget p1, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_UserNotFound:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 236
    :pswitch_2
    sget p1, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_VerificationDisabled:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 221
    :pswitch_3
    sget p1, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_AccountIssueErrorTryAgain:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 224
    :pswitch_4
    sget p1, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_FeatureNotAvailable:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 227
    :pswitch_5
    sget p1, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_TooManyAttempts:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x3ed
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/roblox/client/ac/a$4;->a:Lcom/roblox/client/ac/a;

    invoke-virtual {v0}, Lcom/roblox/client/ac/a;->p()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_InvalidCode:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/roblox/client/ac/a;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/roblox/client/ac/a$4;->a:Lcom/roblox/client/ac/a;

    invoke-direct {p0, p1}, Lcom/roblox/client/ac/a$4;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/roblox/client/ac/a;->b(Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/roblox/client/ac/a$4;->a:Lcom/roblox/client/ac/a;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/ac/a;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/roblox/client/ac/a$4;->a:Lcom/roblox/client/ac/a;

    iget-object v0, v0, Lcom/roblox/client/ac/a;->ax:Lcom/roblox/client/ac/a$a;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/roblox/client/ac/a$4;->a:Lcom/roblox/client/ac/a;

    iget-object v0, v0, Lcom/roblox/client/ac/a;->ax:Lcom/roblox/client/ac/a$a;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/ac/a$a;->a(J)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/roblox/client/ac/a$4;->a:Lcom/roblox/client/ac/a;

    iput-object p1, v0, Lcom/roblox/client/ac/a;->as:Ljava/lang/String;

    .line 199
    iget-object p1, p0, Lcom/roblox/client/ac/a$4;->a:Lcom/roblox/client/ac/a;

    iput-object p2, p1, Lcom/roblox/client/ac/a;->at:Ljava/lang/String;

    .line 200
    iget-object p1, p0, Lcom/roblox/client/ac/a$4;->a:Lcom/roblox/client/ac/a;

    invoke-virtual {p1}, Lcom/roblox/client/ac/a;->p()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_CodeSent:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/roblox/client/ac/a;->a(Ljava/lang/String;I)V

    .line 201
    iget-object p1, p0, Lcom/roblox/client/ac/a$4;->a:Lcom/roblox/client/ac/a;

    const-string p2, ""

    invoke-virtual {p1, v1, p2}, Lcom/roblox/client/ac/a;->a(ZLjava/lang/String;)V

    return-void
.end method
