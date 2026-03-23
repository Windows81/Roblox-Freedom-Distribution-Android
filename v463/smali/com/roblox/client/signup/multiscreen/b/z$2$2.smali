.class Lcom/roblox/client/signup/multiscreen/b/z$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/z$2;->a(Le/b;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Le/b;

.field final synthetic c:Lcom/roblox/client/signup/multiscreen/b/z$2;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/z$2;Ljava/lang/Throwable;Le/b;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/z$2$2;->c:Lcom/roblox/client/signup/multiscreen/b/z$2;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/z$2$2;->a:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/z$2$2;->b:Le/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyCode.Failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/z$2$2;->a:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerifiedSignUpLiveData"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Lcom/roblox/platform/http/returntypes/b;

    invoke-direct {v0}, Lcom/roblox/platform/http/returntypes/b;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/z$2$2;->c:Lcom/roblox/client/signup/multiscreen/b/z$2;

    iget-object v1, v1, Lcom/roblox/client/signup/multiscreen/b/z$2;->a:Lcom/roblox/client/signup/multiscreen/b/z;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/z$2$2;->b:Le/b;

    invoke-interface {v2}, Le/b;->d()Lc/aa;

    move-result-object v2

    invoke-virtual {v2}, Lc/aa;->a()Lc/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/t;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/roblox/client/signup/multiscreen/b/z;->b(Lcom/roblox/client/signup/multiscreen/b/z;Ljava/lang/String;Lcom/roblox/platform/http/returntypes/b;)V

    return-void
.end method
