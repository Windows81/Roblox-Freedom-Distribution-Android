.class public Lcom/roblox/client/resetpassword/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/resetpassword/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/b/f;

.field private b:Lcom/roblox/client/http/f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/b/f;Lcom/roblox/client/http/f;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/roblox/client/resetpassword/b;->a:Lcom/roblox/client/b/f;

    .line 31
    iput-object p2, p0, Lcom/roblox/client/resetpassword/b;->b:Lcom/roblox/client/http/f;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/resetpassword/b;)Lcom/roblox/client/b/f;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/roblox/client/resetpassword/b;->a:Lcom/roblox/client/b/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/roblox/client/resetpassword/b$a;)V
    .locals 5

    .prologue
    .line 36
    new-instance v0, Lcom/roblox/client/resetpassword/b$1;

    invoke-direct {v0, p0, p2}, Lcom/roblox/client/resetpassword/b$1;-><init>(Lcom/roblox/client/resetpassword/b;Lcom/roblox/client/resetpassword/b$a;)V

    .line 88
    iget-object v1, p0, Lcom/roblox/client/resetpassword/b;->b:Lcom/roblox/client/http/f;

    .line 89
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->resetPasswordApiUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/http/post/ResetPasswordRequestBody;

    invoke-direct {v3, p1}, Lcom/roblox/client/http/post/ResetPasswordRequestBody;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 88
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Lcom/roblox/client/http/e;->c()V

    .line 93
    return-void
.end method
