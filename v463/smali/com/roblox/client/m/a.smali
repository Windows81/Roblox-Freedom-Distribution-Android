.class public Lcom/roblox/client/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/m/a$e;,
        Lcom/roblox/client/m/a$f;,
        Lcom/roblox/client/m/a$b;,
        Lcom/roblox/client/m/a$d;,
        Lcom/roblox/client/m/a$c;,
        Lcom/roblox/client/m/a$a;
    }
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
.field protected a:I

.field private b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/roblox/client/m/a$e;->a()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/roblox/client/m/a;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 57
    aput-object p1, v0, v1

    .line 58
    iput v1, p0, Lcom/roblox/client/m/a;->a:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/roblox/client/m/a$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/roblox/client/m/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private b(I)V
    .locals 1

    :goto_0
    if-ltz p1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/roblox/client/m/a;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 96
    iput p1, p0, Lcom/roblox/client/m/a;->a:I

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/roblox/client/m/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/roblox/client/m/a;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/m/a;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/m/a;->b:[Ljava/lang/Object;

    aput-object p1, v0, p2

    .line 84
    iget v0, p0, Lcom/roblox/client/m/a;->a:I

    if-lt p2, v0, :cond_2

    if-nez p1, :cond_1

    .line 86
    invoke-direct {p0, v0}, Lcom/roblox/client/m/a;->b(I)V

    goto :goto_0

    .line 88
    :cond_1
    iput p2, p0, Lcom/roblox/client/m/a;->a:I

    :cond_2
    :goto_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/roblox/client/m/a;->a:I

    return v0
.end method
