.class public Lcom/roblox/client/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lcom/roblox/client/b$a;->a:Ljava/lang/String;

    .line 443
    iput-object p2, p0, Lcom/roblox/client/b$a;->b:Ljava/lang/Object;

    .line 444
    iput-object v0, p0, Lcom/roblox/client/b$a;->d:Ljava/lang/Object;

    .line 445
    iput-object v0, p0, Lcom/roblox/client/b$a;->c:Ljava/lang/Object;

    .line 446
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/roblox/client/b$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 465
    iput-object p1, p0, Lcom/roblox/client/b$a;->d:Ljava/lang/Object;

    .line 466
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/roblox/client/b$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/roblox/client/b$a;->c:Ljava/lang/Object;

    .line 458
    :goto_0
    return-object v0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/b$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/roblox/client/b$a;->d:Ljava/lang/Object;

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/b$a;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 471
    iput-object p1, p0, Lcom/roblox/client/b$a;->c:Ljava/lang/Object;

    .line 472
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/roblox/client/b$a;->c:Ljava/lang/Object;

    return-object v0
.end method
