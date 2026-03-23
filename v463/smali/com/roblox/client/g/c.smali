.class public Lcom/roblox/client/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lcom/roblox/client/g/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/roblox/client/g/c;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Lcom/roblox/client/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/g/c;->d:Lcom/roblox/client/g/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/roblox/client/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/roblox/client/g/c;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/roblox/client/g/c;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/roblox/client/g/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "cvalue"

    .line 29
    iget-object v2, p0, Lcom/roblox/client/g/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "password"

    iget-object v3, p0, Lcom/roblox/client/g/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "rbx.RbxCredential"

    const-string v2, "Failed to convert to JSON"

    .line 31
    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
