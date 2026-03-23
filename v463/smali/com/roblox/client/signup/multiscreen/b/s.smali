.class public Lcom/roblox/client/signup/multiscreen/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/s/f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/s/f;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/s;->a:Lcom/roblox/client/s/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SignUpPreValidation"

    const-string v1, "Username"

    .line 22
    invoke-static {v0, v1, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/b/s;->b(Ljava/lang/String;)V

    const-string v0, "Android-AppSignup-UsernameNotGenerated"

    .line 39
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/b/s;->c(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 40
    invoke-virtual {p0, p1, p2, v0}, Lcom/roblox/client/signup/multiscreen/b/s;->a(Ljava/lang/String;II)V

    const/16 p1, 0x1f4

    if-ne p2, p1, :cond_0

    const-string p1, "Android-AppSignup-GenerateUsername500Error"

    .line 43
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/s;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "signup_multiscreen"

    .line 34
    invoke-static {v0, p1, p2, p3}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "signup_multiscreen"

    const-string v1, "username"

    .line 18
    invoke-static {v0, v1, p1, p2}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SignUpPreValidation"

    const-string v1, "UsernameSuggestion"

    .line 26
    invoke-static {v0, v1, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/s;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignup-ChangeUsernameFailure"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    const/16 v0, 0x1f4

    if-ne p2, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/s;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignup-ChangeUsername500Error"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/roblox/client/signup/multiscreen/b/s;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/s;->a:Lcom/roblox/client/s/f;

    invoke-virtual {v0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method
