.class public abstract Lcom/b/a/a/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/b/a/a/g/i;

.field b:Lcom/b/a/a/g/b;

.field public c:J


# direct methods
.method protected constructor <init>(Lcom/b/a/a/g/i;)V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/b/a/a/g/b;->c:J

    .line 10
    iput-object p1, p0, Lcom/b/a/a/g/b;->a:Lcom/b/a/a/g/i;

    .line 11
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method final b()V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    .line 17
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/b/a/a/g/b;->c:J

    .line 18
    invoke-virtual {p0}, Lcom/b/a/a/g/b;->a()V

    .line 19
    return-void
.end method
