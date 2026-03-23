.class Lcom/roblox/client/signup/multiscreen/b/z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/z;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/roblox/client/signup/multiscreen/a/a;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/roblox/client/signup/multiscreen/b/z;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/z;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->c:Lcom/roblox/client/signup/multiscreen/a/a;

    iput-object p5, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "VerifiedSignUpLiveData"

    const-string v1, "doSignUp"

    .line 79
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/z;->a(Lcom/roblox/client/signup/multiscreen/b/z;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/z;->b(Lcom/roblox/client/signup/multiscreen/b/z;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->c:Lcom/roblox/client/signup/multiscreen/a/a;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/z;->a(Lcom/roblox/client/signup/multiscreen/b/z;Lcom/roblox/client/signup/multiscreen/a/a;)Lcom/roblox/client/signup/multiscreen/a/a;

    .line 84
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/i$a;->a:Lcom/roblox/client/signup/multiscreen/a/i$a;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/z;->a(Lcom/roblox/client/signup/multiscreen/b/z;Lcom/roblox/client/signup/multiscreen/a/i$a;)Lcom/roblox/client/signup/multiscreen/a/i$a;

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/i$a;->b:Lcom/roblox/client/signup/multiscreen/a/i$a;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/z;->a(Lcom/roblox/client/signup/multiscreen/b/z;Lcom/roblox/client/signup/multiscreen/a/i$a;)Lcom/roblox/client/signup/multiscreen/a/i$a;

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/z;->b(Lcom/roblox/client/signup/multiscreen/b/z;)Lcom/roblox/client/signup/multiscreen/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/b/y;->b()V

    .line 94
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/z;->e(Lcom/roblox/client/signup/multiscreen/b/z;)Lcom/roblox/platform/http/c/d;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/postbody/auth/SignUpChallengePostBody;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    .line 96
    invoke-static {v2}, Lcom/roblox/client/signup/multiscreen/b/z;->d(Lcom/roblox/client/signup/multiscreen/b/z;)Lcom/roblox/client/signup/multiscreen/a/i$a;

    move-result-object v2

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/i$a;->a:Lcom/roblox/client/signup/multiscreen/a/i$a;

    if-ne v2, v3, :cond_1

    const-string v2, "Sms"

    goto :goto_1

    :cond_1
    const-string v2, "Email"

    :goto_1
    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    .line 99
    invoke-static {v3}, Lcom/roblox/client/signup/multiscreen/b/z;->a(Lcom/roblox/client/signup/multiscreen/b/z;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/roblox/platform/http/postbody/auth/SignUpChallengePostBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v0, v1}, Lcom/roblox/platform/http/c/d;->a(Lcom/roblox/platform/http/postbody/auth/SignUpChallengePostBody;)Le/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/z$1$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/b/z$1$1;-><init>(Lcom/roblox/client/signup/multiscreen/b/z$1;)V

    .line 99
    invoke-interface {v0, v1}, Le/b;->a(Le/d;)V

    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/a/i;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/i$b;->p:Lcom/roblox/client/signup/multiscreen/a/i$b;

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    invoke-static {v3}, Lcom/roblox/client/signup/multiscreen/b/z;->a(Lcom/roblox/client/signup/multiscreen/b/z;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/roblox/client/signup/multiscreen/a/i$a;->c:Lcom/roblox/client/signup/multiscreen/a/i$a;

    invoke-direct {v1, v2, v3, v4}, Lcom/roblox/client/signup/multiscreen/a/i;-><init>(Lcom/roblox/client/signup/multiscreen/a/i$b;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/i$a;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/z;->a(Ljava/lang/Object;)V

    return-void
.end method
