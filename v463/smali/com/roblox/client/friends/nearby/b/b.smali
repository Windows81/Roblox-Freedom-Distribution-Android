.class public Lcom/roblox/client/friends/nearby/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/friends/nearby/b/a;


# instance fields
.field private final a:Lcom/roblox/platform/http/c/k;


# direct methods
.method public constructor <init>(Lcom/roblox/platform/http/c/k;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/b;->a:Lcom/roblox/platform/http/c/k;

    return-void
.end method


# virtual methods
.method public a(J)Le/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/b;->a:Lcom/roblox/platform/http/c/k;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 20
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "150x150"

    const-string v2, "Png"

    .line 17
    invoke-interface {v0, p1, v1, v2, p2}, Lcom/roblox/platform/http/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Le/b;

    move-result-object p1

    return-object p1
.end method
