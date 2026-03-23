.class public Lcom/roblox/client/q/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/q/d$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/roblox/client/q/a;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/k/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/roblox/client/q/d;->a:J

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/q/d;->g:Z

    .line 32
    new-instance v0, Lcom/roblox/client/q/a;

    invoke-direct {v0}, Lcom/roblox/client/q/a;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/q/d;->h:Lcom/roblox/client/q/a;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/q/d;->i:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/q/d$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/roblox/client/q/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/roblox/client/q/d;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/roblox/client/q/d$a;->a:Lcom/roblox/client/q/d;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/roblox/client/q/d;->b:I

    .line 58
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/roblox/client/q/d;->a:J

    .line 99
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/roblox/client/q/d;->e:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/k/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/roblox/client/q/d;->i:Ljava/util/ArrayList;

    .line 134
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/roblox/client/q/d;->g:Z

    .line 118
    return-void
.end method

.method public a(Lcom/roblox/client/q/a;)Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/roblox/client/q/d;->h:Lcom/roblox/client/q/a;

    invoke-virtual {v0, p1}, Lcom/roblox/client/q/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iput-object p1, p0, Lcom/roblox/client/q/d;->h:Lcom/roblox/client/q/a;

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/roblox/client/q/d;->b:I

    .line 43
    iput v0, p0, Lcom/roblox/client/q/d;->c:I

    .line 44
    iput v0, p0, Lcom/roblox/client/q/d;->d:I

    .line 45
    iput v0, p0, Lcom/roblox/client/q/d;->j:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/q/d;->e:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/q/d;->g:Z

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/roblox/client/q/d;->a:J

    .line 51
    iget-object v0, p0, Lcom/roblox/client/q/d;->h:Lcom/roblox/client/q/a;

    invoke-virtual {v0}, Lcom/roblox/client/q/a;->a()V

    .line 53
    iget-object v0, p0, Lcom/roblox/client/q/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/roblox/client/q/d;->c:I

    .line 66
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/roblox/client/q/d;->f:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/roblox/client/q/d;->d:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/roblox/client/q/d;->d:I

    .line 78
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/roblox/client/q/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/q/d;->e:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    const-string v0, ""

    .line 85
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/roblox/client/q/d;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/roblox/client/q/d;->j:I

    .line 146
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/roblox/client/q/d;->a:J

    return-wide v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/roblox/client/q/d;->k:I

    .line 154
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/roblox/client/q/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/q/d;->f:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    const-string v0, ""

    .line 106
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/roblox/client/q/d;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/roblox/client/q/d;->g:Z

    return v0
.end method

.method public h()Lcom/roblox/client/q/a;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/roblox/client/q/d;->h:Lcom/roblox/client/q/a;

    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/k/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/roblox/client/q/d;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/roblox/client/q/d;->j:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/roblox/client/q/d;->k:I

    return v0
.end method
