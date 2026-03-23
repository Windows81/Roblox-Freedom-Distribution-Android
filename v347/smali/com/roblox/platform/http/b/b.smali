.class public Lcom/roblox/platform/http/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/t;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/roblox/platform/http/b/b;->a:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lb/t$a;)Lb/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    const-string v0, "rbx.platform"

    invoke-static {v0}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/platform/d$b;->a()Lcom/roblox/platform/d$b;

    move-result-object v0

    const-string v1, "UserAgentInterceptor.intercept()"

    invoke-virtual {v0, v1}, Lcom/roblox/platform/d$b;->b(Ljava/lang/String;)I

    .line 26
    invoke-interface {p1}, Lb/t$a;->a()Lb/z;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lb/z;->e()Lb/z$a;

    move-result-object v0

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/roblox/platform/http/b/b;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1, v2}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lb/z$a;->a()Lb/z;

    move-result-object v0

    .line 30
    invoke-interface {p1, v0}, Lb/t$a;->a(Lb/z;)Lb/ab;

    move-result-object v0

    return-object v0
.end method
