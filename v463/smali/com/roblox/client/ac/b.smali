.class public Lcom/roblox/client/ac/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ac/b$b;,
        Lcom/roblox/client/ac/b$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/roblox/client/s/f;

.field protected b:Lcom/roblox/client/http/f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/s/f;Lcom/roblox/client/http/f;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/roblox/client/ac/b;->a:Lcom/roblox/client/s/f;

    .line 32
    iput-object p2, p0, Lcom/roblox/client/ac/b;->b:Lcom/roblox/client/http/f;

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/roblox/client/ac/b$a;)Lcom/roblox/client/http/l;
    .locals 1

    .line 97
    new-instance v0, Lcom/roblox/client/ac/b$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/roblox/client/ac/b$1;-><init>(Lcom/roblox/client/ac/b;Lcom/roblox/client/ac/b$a;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/roblox/client/ac/b$a;)Lcom/roblox/client/http/l;
    .locals 1

    .line 195
    new-instance v0, Lcom/roblox/client/ac/b$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/roblox/client/ac/b$2;-><init>(Lcom/roblox/client/ac/b;Lcom/roblox/client/ac/b$a;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/ac/b$a;)V
    .locals 3

    .line 84
    invoke-static {}, Lcom/roblox/client/u;->D()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/roblox/client/http/post/AuthTwoStepVerificationResendCodeRequestBody;

    const-string v2, "Login"

    invoke-direct {v1, p1, p2, v2}, Lcom/roblox/client/http/post/AuthTwoStepVerificationResendCodeRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1, p3}, Lcom/roblox/client/ac/b;->b(Ljava/lang/String;Lcom/roblox/client/ac/b$a;)Lcom/roblox/client/http/l;

    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/roblox/client/ac/b;->b:Lcom/roblox/client/http/f;

    const/4 p3, 0x0

    invoke-interface {p2, v0, v1, p3, p1}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Lcom/roblox/client/http/e;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/roblox/client/ac/b$a;)V
    .locals 8

    .line 59
    invoke-static {}, Lcom/roblox/client/u;->C()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v7, Lcom/roblox/client/http/post/AuthTwoStepVerifyCodeRequestBody;

    const-string v6, "Login"

    move-object v1, v7

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/http/post/AuthTwoStepVerifyCodeRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1, p5}, Lcom/roblox/client/ac/b;->a(Ljava/lang/String;Lcom/roblox/client/ac/b$a;)Lcom/roblox/client/http/l;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/roblox/client/ac/b;->b:Lcom/roblox/client/http/f;

    const/4 p3, 0x0

    invoke-interface {p2, v0, v7, p3, p1}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Lcom/roblox/client/http/e;->c()V

    return-void
.end method
