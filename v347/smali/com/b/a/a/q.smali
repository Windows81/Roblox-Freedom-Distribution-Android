.class public Lcom/b/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/q$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/b/a/a/q;

.field public static final b:Lcom/b/a/a/q;


# instance fields
.field private c:Z

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Integer;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/b/a/a/q$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/b/a/a/q$a;-><init>(Z)V

    sput-object v0, Lcom/b/a/a/q;->a:Lcom/b/a/a/q;

    .line 16
    new-instance v0, Lcom/b/a/a/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/a/q$a;-><init>(Z)V

    sput-object v0, Lcom/b/a/a/q;->b:Lcom/b/a/a/q;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/a/q;->f:Z

    .line 23
    iput-boolean p1, p0, Lcom/b/a/a/q;->c:Z

    .line 24
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/b/a/a/q;->c:Z

    return v0
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/b/a/a/q;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/b/a/a/q;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/b/a/a/q;->f:Z

    return v0
.end method
