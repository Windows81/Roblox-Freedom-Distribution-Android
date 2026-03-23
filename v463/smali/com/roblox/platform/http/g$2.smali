.class Lcom/roblox/platform/http/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/platform/http/g;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/platform/http/g;


# direct methods
.method constructor <init>(Lcom/roblox/platform/http/g;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/roblox/platform/http/g$2;->b:Lcom/roblox/platform/http/g;

    iput-object p2, p0, Lcom/roblox/platform/http/g$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "rbx.platform"

    .line 73
    invoke-static {v0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/platform/e$b;->a()Lcom/roblox/platform/e$b;

    move-result-object v1

    const-string v2, "Verifying cookies."

    invoke-virtual {v1, v2}, Lcom/roblox/platform/e$b;->b(Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/roblox/platform/http/g$2;->b:Lcom/roblox/platform/http/g;

    invoke-static {}, Lcom/roblox/platform/http/h;->b()Lcom/roblox/platform/http/h;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/platform/http/g$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/roblox/platform/http/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/platform/http/g;->a(Lcom/roblox/platform/http/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/roblox/platform/http/g$2;->b:Lcom/roblox/platform/http/g;

    invoke-static {v2}, Lcom/roblox/platform/http/g;->b(Lcom/roblox/platform/http/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-static {v0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/platform/e$b;->a()Lcom/roblox/platform/e$b;

    move-result-object v0

    const-string v2, "WebViewCookieHandler.verifyCookies(): Cookie changed, notifying observers."

    invoke-virtual {v0, v2}, Lcom/roblox/platform/e$b;->b(Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/roblox/platform/http/g$2;->b:Lcom/roblox/platform/http/g;

    invoke-static {v0, v1}, Lcom/roblox/platform/http/g;->b(Lcom/roblox/platform/http/g;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/roblox/platform/http/g$2;->b:Lcom/roblox/platform/http/g;

    invoke-static {v0}, Lcom/roblox/platform/http/g;->d(Lcom/roblox/platform/http/g;)Lcom/roblox/platform/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/d;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/http/g$2;->b:Lcom/roblox/platform/http/g;

    invoke-static {v1}, Lcom/roblox/platform/http/g;->c(Lcom/roblox/platform/http/g;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
