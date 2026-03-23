.class public Lcom/roblox/client/pushnotification/v2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/roblox/client/pushnotification/v2/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/roblox/client/pushnotification/v2/a/b;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/roblox/client/pushnotification/v2/a/a;

    invoke-direct {v0, p1}, Lcom/roblox/client/pushnotification/v2/a/a;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
