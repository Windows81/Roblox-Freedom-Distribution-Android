.class public Lcom/roblox/client/routing/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/routing/c;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/roblox/client/routing/c;)V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/routing/d;-><init>(Lcom/roblox/client/routing/c;Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/roblox/client/routing/c;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/routing/c;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/roblox/client/routing/d;->a:Lcom/roblox/client/routing/c;

    .line 11
    iput-object p2, p0, Lcom/roblox/client/routing/d;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/roblox/client/routing/d;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public b()Lcom/roblox/client/routing/c;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/roblox/client/routing/d;->a:Lcom/roblox/client/routing/c;

    return-object v0
.end method
