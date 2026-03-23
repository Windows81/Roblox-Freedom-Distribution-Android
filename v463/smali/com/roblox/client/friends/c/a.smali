.class public Lcom/roblox/client/friends/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/friends/c/b;


# instance fields
.field private final a:Lcom/roblox/platform/http/c/g;


# direct methods
.method public constructor <init>(Lcom/roblox/platform/http/c/g;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/roblox/client/friends/c/a;->a:Lcom/roblox/platform/http/c/g;

    return-void
.end method


# virtual methods
.method public a()Le/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/TokenResponseBody;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/roblox/client/friends/c/a;->a:Lcom/roblox/platform/http/c/g;

    invoke-interface {v0}, Lcom/roblox/platform/http/c/g;->a()Le/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Le/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/roblox/client/friends/c/a;->a:Lcom/roblox/platform/http/c/g;

    invoke-interface {v0}, Lcom/roblox/platform/http/c/g;->b()Le/b;

    move-result-object v0

    return-object v0
.end method

.method public c()Le/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/roblox/client/friends/c/a;->a:Lcom/roblox/platform/http/c/g;

    invoke-interface {v0}, Lcom/roblox/platform/http/c/g;->c()Le/b;

    move-result-object v0

    return-object v0
.end method
