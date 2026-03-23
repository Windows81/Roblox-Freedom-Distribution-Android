.class public Lcom/roblox/platform/http/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/u;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rbx.platform"

    .line 17
    iput-object v0, p0, Lcom/roblox/platform/http/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lc/aa;Ljava/lang/String;)Lc/aa;
    .locals 3

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1}, Lc/aa;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rbx.platform"

    .line 45
    invoke-static {v0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/platform/e$b;->a()Lcom/roblox/platform/e$b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XSRFTokenInterceptor.putXSRFTokenInRequest() token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/roblox/platform/http/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/e$b;->b(Ljava/lang/String;)I

    .line 46
    invoke-virtual {p1}, Lc/aa;->e()Lc/aa$a;

    move-result-object p1

    const-string v0, "X-CSRF-TOKEN"

    invoke-virtual {p1, v0, p2}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    move-result-object p1

    invoke-virtual {p1}, Lc/aa$a;->a()Lc/aa;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/roblox/platform/http/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 54
    sput-object p0, Lcom/roblox/platform/http/b/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lc/u$a;)Lc/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-interface {p1}, Lc/u$a;->a()Lc/aa;

    move-result-object v0

    invoke-static {}, Lcom/roblox/platform/http/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/platform/http/b/c;->a(Lc/aa;Ljava/lang/String;)Lc/aa;

    move-result-object v0

    .line 29
    invoke-interface {p1, v0}, Lc/u$a;->a(Lc/aa;)Lc/ac;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lc/ac;->b()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    const-string v0, "X-CSRF-TOKEN"

    .line 32
    invoke-virtual {p1, v0}, Lc/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rbx.platform"

    .line 34
    invoke-static {v1}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/platform/e$b;->a()Lcom/roblox/platform/e$b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XSRFTokenInterceptor.intercept() new token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/roblox/platform/e$b;->b(Ljava/lang/String;)I

    .line 35
    invoke-static {v0}, Lcom/roblox/platform/http/b/c;->a(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
