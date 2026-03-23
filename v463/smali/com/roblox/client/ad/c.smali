.class public Lcom/roblox/client/ad/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ad/c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/roblox/client/ab/e;


# instance fields
.field private b:J

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Lcom/roblox/client/ab/e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/roblox/client/signup/multiscreen/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-object v0, Lcom/roblox/client/ab/e;->a:Lcom/roblox/client/ab/e;

    sput-object v0, Lcom/roblox/client/ad/c;->a:Lcom/roblox/client/ab/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lcom/roblox/client/ad/c;->b:J

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/roblox/client/ad/c;->g:Z

    .line 52
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/ad/c;->j:Landroidx/lifecycle/p;

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/roblox/client/ad/c;->k:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/ad/c$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/roblox/client/ad/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/roblox/client/ad/c;
    .locals 1

    .line 26
    sget-object v0, Lcom/roblox/client/ad/c$a;->a:Lcom/roblox/client/ad/c;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/roblox/client/ad/c;->c:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/roblox/client/ad/c;->b:J

    return-void
.end method

.method public a(Lcom/roblox/client/ab/e;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/roblox/client/ad/c;->j:Landroidx/lifecycle/p;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/roblox/client/signup/multiscreen/a/a;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/roblox/client/ad/c;->m:Lcom/roblox/client/signup/multiscreen/a/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/roblox/client/ad/c;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/roblox/client/ad/c;->g:Z

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/roblox/client/ad/c;->c:I

    .line 77
    iput v0, p0, Lcom/roblox/client/ad/c;->h:I

    const-string v0, ""

    .line 78
    iput-object v0, p0, Lcom/roblox/client/ad/c;->k:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/roblox/client/ad/c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/roblox/client/ad/c;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/roblox/client/ad/c;->g:Z

    const-wide/16 v0, -0x1

    .line 84
    iput-wide v0, p0, Lcom/roblox/client/ad/c;->b:J

    .line 86
    sget-object v0, Lcom/roblox/client/ad/c;->a:Lcom/roblox/client/ab/e;

    invoke-virtual {p0, v0}, Lcom/roblox/client/ad/c;->a(Lcom/roblox/client/ab/e;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/roblox/client/ad/c;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/roblox/client/ad/c;->e:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/roblox/client/ad/c;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/roblox/client/ad/c;->i:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/roblox/client/ad/c;->f:Ljava/lang/String;

    return-void
.end method

.method public d()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/roblox/client/ad/c;->b:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/roblox/client/ad/c;->l:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/roblox/client/ad/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ad/c;->e:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/roblox/client/ad/c;->k:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/roblox/client/ad/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ad/c;->f:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/roblox/client/ad/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/roblox/client/signup/multiscreen/a/a;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/roblox/client/ad/c;->m:Lcom/roblox/client/signup/multiscreen/a/a;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/roblox/client/ad/c;->g:Z

    return v0
.end method

.method public j()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/roblox/client/ad/c;->h:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/roblox/client/ad/c;->i:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/roblox/client/ad/c;->m()Lcom/roblox/client/ab/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/ab/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/roblox/client/ab/e;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/roblox/client/ad/c;->j:Landroidx/lifecycle/p;

    invoke-virtual {v0}, Landroidx/lifecycle/p;->m_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/ab/e;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    sget-object v0, Lcom/roblox/client/ad/c;->a:Lcom/roblox/client/ab/e;

    :goto_0
    return-object v0
.end method

.method public n()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/ab/e;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/roblox/client/ad/c;->j:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public o()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/roblox/client/ad/c;->j:Landroidx/lifecycle/p;

    invoke-virtual {v0}, Landroidx/lifecycle/p;->m_()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    sget-object v0, Lcom/roblox/client/ad/c;->a:Lcom/roblox/client/ab/e;

    invoke-virtual {p0, v0}, Lcom/roblox/client/ad/c;->a(Lcom/roblox/client/ab/e;)V

    :cond_0
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/roblox/client/ad/c;->k:Ljava/lang/String;

    return-object v0
.end method
