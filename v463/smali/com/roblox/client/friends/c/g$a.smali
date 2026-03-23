.class public Lcom/roblox/client/friends/c/g$a;
.super Landroidx/lifecycle/v$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/friends/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/roblox/client/friends/c/e;

.field private final b:I

.field private final c:Lcom/roblox/client/friends/a;

.field private final d:Lcom/roblox/client/friends/c/d;

.field private final e:Lcom/roblox/client/ae/v$a;


# direct methods
.method public constructor <init>(Lcom/roblox/client/friends/c/e;ILcom/roblox/client/friends/a;Lcom/roblox/client/friends/c/d;Lcom/roblox/client/ae/v$a;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Landroidx/lifecycle/v$c;-><init>()V

    .line 368
    iput-object p1, p0, Lcom/roblox/client/friends/c/g$a;->a:Lcom/roblox/client/friends/c/e;

    .line 369
    iput p2, p0, Lcom/roblox/client/friends/c/g$a;->b:I

    .line 370
    iput-object p3, p0, Lcom/roblox/client/friends/c/g$a;->c:Lcom/roblox/client/friends/a;

    .line 371
    iput-object p4, p0, Lcom/roblox/client/friends/c/g$a;->d:Lcom/roblox/client/friends/c/d;

    .line 372
    iput-object p5, p0, Lcom/roblox/client/friends/c/g$a;->e:Lcom/roblox/client/ae/v$a;

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

    .line 379
    new-instance p1, Lcom/roblox/client/friends/c/g;

    iget-object v1, p0, Lcom/roblox/client/friends/c/g$a;->a:Lcom/roblox/client/friends/c/e;

    iget v2, p0, Lcom/roblox/client/friends/c/g$a;->b:I

    iget-object v3, p0, Lcom/roblox/client/friends/c/g$a;->c:Lcom/roblox/client/friends/a;

    iget-object v4, p0, Lcom/roblox/client/friends/c/g$a;->d:Lcom/roblox/client/friends/c/d;

    iget-object v5, p0, Lcom/roblox/client/friends/c/g$a;->e:Lcom/roblox/client/ae/v$a;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/friends/c/g;-><init>(Lcom/roblox/client/friends/c/e;ILcom/roblox/client/friends/a;Lcom/roblox/client/friends/c/d;Lcom/roblox/client/ae/v$a;)V

    return-object p1
.end method
