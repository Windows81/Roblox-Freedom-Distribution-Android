.class public Lcom/roblox/client/friends/nearby/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/friends/nearby/b/d;


# instance fields
.field private final a:Lcom/roblox/platform/http/c/g;


# direct methods
.method public constructor <init>(Lcom/roblox/platform/http/c/g;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/c;->a:Lcom/roblox/platform/http/c/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/c;->a:Lcom/roblox/platform/http/c/g;

    invoke-interface {v0, p1}, Lcom/roblox/platform/http/c/g;->a(Ljava/lang/String;)Le/b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Le/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/c;->a:Lcom/roblox/platform/http/c/g;

    invoke-interface {v0, p1}, Lcom/roblox/platform/http/c/g;->b(Ljava/lang/String;)Le/b;

    move-result-object p1

    return-object p1
.end method
