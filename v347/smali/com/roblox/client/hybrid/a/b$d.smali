.class Lcom/roblox/client/hybrid/a/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/hybrid/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/hybrid/a/b;


# direct methods
.method private constructor <init>(Lcom/roblox/client/hybrid/a/b;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/b$d;->a:Lcom/roblox/client/hybrid/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/hybrid/a/b;Lcom/roblox/client/hybrid/a/b$1;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/roblox/client/hybrid/a/b$d;-><init>(Lcom/roblox/client/hybrid/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "placeID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 165
    const-string v1, "rbx.hybrid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShareGameToChat.execute() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v4}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    goto :goto_0
.end method
