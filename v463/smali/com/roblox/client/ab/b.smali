.class public Lcom/roblox/client/ab/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ab/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/ab/a/a;

.field private b:Lcom/roblox/client/ab/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/roblox/client/ab/a/a;

    invoke-direct {v0}, Lcom/roblox/client/ab/a/a;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/ab/b;->a:Lcom/roblox/client/ab/a/a;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/ab/b;Lcom/roblox/client/ab/e;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/roblox/client/ab/b;->a(Lcom/roblox/client/ab/e;)V

    return-void
.end method

.method private a(Lcom/roblox/client/ab/e;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/roblox/client/ab/b;->b:Lcom/roblox/client/ab/b$a;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0, p1}, Lcom/roblox/client/ab/b$a;->a(Lcom/roblox/client/ab/e;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/ab/b$a;)V
    .locals 3

    .line 18
    iput-object p1, p0, Lcom/roblox/client/ab/b;->b:Lcom/roblox/client/ab/b$a;

    .line 19
    invoke-static {}, Lcom/roblox/client/b;->bw()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Lcom/roblox/client/ab/b;->a:Lcom/roblox/client/ab/a/a;

    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/ad/c;->d()J

    move-result-wide v0

    new-instance v2, Lcom/roblox/client/ab/b$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/ab/b$1;-><init>(Lcom/roblox/client/ab/b;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/roblox/client/ab/a/a;->a(JLcom/roblox/client/ab/a;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/roblox/client/ab/b;->a(Lcom/roblox/client/ab/e;)V

    :goto_0
    return-void
.end method
