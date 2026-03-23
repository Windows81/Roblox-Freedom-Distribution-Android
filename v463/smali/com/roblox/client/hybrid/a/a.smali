.class public Lcom/roblox/client/hybrid/a/a;
.super Lcom/roblox/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Analytics"

    .line 13
    invoke-direct {p0, v0}, Lcom/roblox/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    return-void
.end method
