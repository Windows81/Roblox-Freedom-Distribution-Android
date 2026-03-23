.class public Lcom/roblox/client/http/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/roblox/client/http/c;

    invoke-direct {v0, p1, p3, p2}, Lcom/roblox/client/http/c;-><init>(Ljava/lang/String;Lcom/roblox/client/http/l;[Lcom/roblox/client/http/b$a;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;
    .locals 6

    .prologue
    .line 35
    new-instance v0, Lcom/roblox/client/http/d;

    new-instance v1, Lcom/google/gson/e;

    invoke-direct {v1}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/gson/e;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getJsonContentType()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/http/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/l;[Lcom/roblox/client/http/b$a;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;Ljava/lang/String;)Lcom/roblox/client/http/d;
    .locals 6

    .prologue
    .line 27
    new-instance v0, Lcom/roblox/client/http/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/http/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/l;[Lcom/roblox/client/http/b$a;)V

    return-object v0
.end method
