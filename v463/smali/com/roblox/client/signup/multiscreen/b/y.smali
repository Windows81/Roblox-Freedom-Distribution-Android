.class public Lcom/roblox/client/signup/multiscreen/b/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/s/f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/s/f;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/y;->a:Lcom/roblox/client/s/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/y;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-Challenge500Error"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/y;->a:Lcom/roblox/client/s/f;

    invoke-virtual {v0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 51
    invoke-static {p1, p2, p3, p4}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/y;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-ChallengeAttempt"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/y;->a:Lcom/roblox/client/s/f;

    invoke-virtual {v0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/y;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-Verify500Error"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/y;->a:Lcom/roblox/client/s/f;

    invoke-virtual {v0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/y;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-VerifyAttempt"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/y;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-SignUpAttempt"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/y;->a:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-SignUp500Error"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method
