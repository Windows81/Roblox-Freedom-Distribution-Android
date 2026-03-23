.class public Lcom/roblox/platform/http/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/u;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/roblox/platform/http/b/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lc/u$a;)Lc/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "rbx.platform"

    .line 25
    invoke-static {v0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/platform/e$b;->a()Lcom/roblox/platform/e$b;

    move-result-object v0

    const-string v1, "UserAgentInterceptor.intercept()"

    invoke-virtual {v0, v1}, Lcom/roblox/platform/e$b;->b(Ljava/lang/String;)I

    .line 26
    invoke-interface {p1}, Lc/u$a;->a()Lc/aa;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lc/aa;->e()Lc/aa$a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/http/b/b;->a:Ljava/lang/String;

    const-string v2, "User-Agent"

    .line 28
    invoke-virtual {v0, v2, v1}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lc/aa$a;->a()Lc/aa;

    move-result-object v0

    .line 30
    invoke-interface {p1, v0}, Lc/u$a;->a(Lc/aa;)Lc/ac;

    move-result-object p1

    return-object p1
.end method
