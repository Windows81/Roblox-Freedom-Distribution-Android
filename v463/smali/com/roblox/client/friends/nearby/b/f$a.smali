.class public Lcom/roblox/client/friends/nearby/b/f$a;
.super Landroidx/lifecycle/v$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/friends/nearby/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/roblox/client/friends/nearby/b/e;

.field private final b:I

.field private final c:Lcom/roblox/client/friends/a;

.field private final d:Lcom/roblox/client/ae/v$a;

.field private final e:Lcom/roblox/client/friends/nearby/b/g;


# direct methods
.method public constructor <init>(Lcom/roblox/client/friends/nearby/b/e;ILcom/roblox/client/friends/a;Lcom/roblox/client/ae/v$a;Lcom/roblox/client/friends/nearby/b/g;)V
    .locals 0

    .line 523
    invoke-direct {p0}, Landroidx/lifecycle/v$c;-><init>()V

    .line 524
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/f$a;->a:Lcom/roblox/client/friends/nearby/b/e;

    .line 525
    iput p2, p0, Lcom/roblox/client/friends/nearby/b/f$a;->b:I

    .line 526
    iput-object p3, p0, Lcom/roblox/client/friends/nearby/b/f$a;->c:Lcom/roblox/client/friends/a;

    .line 527
    iput-object p4, p0, Lcom/roblox/client/friends/nearby/b/f$a;->d:Lcom/roblox/client/ae/v$a;

    .line 528
    iput-object p5, p0, Lcom/roblox/client/friends/nearby/b/f$a;->e:Lcom/roblox/client/friends/nearby/b/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/u;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/u;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 535
    new-instance p1, Lcom/roblox/client/friends/nearby/b/f;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$a;->a:Lcom/roblox/client/friends/nearby/b/e;

    iget v2, p0, Lcom/roblox/client/friends/nearby/b/f$a;->b:I

    iget-object v3, p0, Lcom/roblox/client/friends/nearby/b/f$a;->c:Lcom/roblox/client/friends/a;

    iget-object v4, p0, Lcom/roblox/client/friends/nearby/b/f$a;->d:Lcom/roblox/client/ae/v$a;

    iget-object v5, p0, Lcom/roblox/client/friends/nearby/b/f$a;->e:Lcom/roblox/client/friends/nearby/b/g;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/friends/nearby/b/f;-><init>(Lcom/roblox/client/friends/nearby/b/e;ILcom/roblox/client/friends/a;Lcom/roblox/client/ae/v$a;Lcom/roblox/client/friends/nearby/b/g;)V

    return-object p1
.end method
