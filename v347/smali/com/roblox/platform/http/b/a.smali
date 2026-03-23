.class public Lcom/roblox/platform/http/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 23
    invoke-static {}, Lcom/roblox/platform/g;->d()Lcom/roblox/platform/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    invoke-interface {p1}, Lb/t$a;->a()Lb/z;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/t$a;->a(Lb/z;)Lb/ab;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "rbx.platform"

    invoke-static {v1}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/platform/d$b;->a()Lcom/roblox/platform/d$b;

    move-result-object v1

    const-string v2, "DeviceHandleInterceptor.intercept()"

    invoke-virtual {v1, v2}, Lcom/roblox/platform/d$b;->b(Ljava/lang/String;)I

    .line 29
    invoke-interface {p1}, Lb/t$a;->a()Lb/z;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lb/z;->e()Lb/z$a;

    move-result-object v1

    .line 31
    const-string v2, "RBX-Device-Handle"

    invoke-virtual {v1, v2, v0}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    .line 33
    invoke-static {}, Lcom/roblox/platform/g;->d()Lcom/roblox/platform/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/roblox/platform/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    const-string v2, "X-Ablm"

    invoke-virtual {v1, v2, v0}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    .line 38
    :cond_1
    invoke-virtual {v1}, Lb/z$a;->a()Lb/z;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/t$a;->a(Lb/z;)Lb/ab;

    move-result-object v0

    goto :goto_0
.end method
