.class public Lcom/roblox/platform/http/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/t;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "rbx.platform"

    iput-object v0, p0, Lcom/roblox/platform/http/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lb/z;Ljava/lang/String;)Lb/z;
    .locals 3

    .prologue
    .line 44
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lb/z;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "rbx.platform"

    invoke-static {v0}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/platform/d$b;->a()Lcom/roblox/platform/d$b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XSRFTokenInterceptor.putXSRFTokenInRequest() token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/roblox/platform/http/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/d$b;->b(Ljava/lang/String;)I

    .line 46
    invoke-virtual {p1}, Lb/z;->e()Lb/z$a;

    move-result-object v0

    const-string v1, "X-CSRF-TOKEN"

    invoke-virtual {v0, v1, p2}, Lb/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/z$a;->a()Lb/z;

    move-result-object p1

    .line 49
    :cond_0
    return-object p1
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/roblox/platform/http/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    sput-object p0, Lcom/roblox/platform/http/b/c;->b:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lb/t$a;)Lb/ab;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-interface {p1}, Lb/t$a;->a()Lb/z;

    move-result-object v0

    invoke-static {}, Lcom/roblox/platform/http/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/platform/http/b/c;->a(Lb/z;Ljava/lang/String;)Lb/z;

    move-result-object v0

    .line 29
    invoke-interface {p1, v0}, Lb/t$a;->a(Lb/z;)Lb/ab;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lb/ab;->b()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_0

    .line 32
    const-string v1, "X-CSRF-TOKEN"

    invoke-virtual {v0, v1}, Lb/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    const-string v2, "rbx.platform"

    invoke-static {v2}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/platform/d$b;->a()Lcom/roblox/platform/d$b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XSRFTokenInterceptor.intercept() new token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/roblox/platform/d$b;->b(Ljava/lang/String;)I

    .line 35
    invoke-static {v1}, Lcom/roblox/platform/http/b/c;->a(Ljava/lang/String;)V

    .line 40
    :cond_0
    return-object v0
.end method
