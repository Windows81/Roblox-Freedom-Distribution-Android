.class Lb/a/c/d$2;
.super Lb/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/d;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Lb/a/c/d;


# direct methods
.method varargs constructor <init>(Lb/a/c/d;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1

    .prologue
    .line 339
    iput-object p1, p0, Lb/a/c/d$2;->d:Lb/a/c/d;

    iput p4, p0, Lb/a/c/d$2;->a:I

    iput-wide p5, p0, Lb/a/c/d$2;->c:J

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Lb/a/c/d$2;->d:Lb/a/c/d;

    iget-object v0, v0, Lb/a/c/d;->i:Lb/a/c/c;

    iget v1, p0, Lb/a/c/d$2;->a:I

    iget-wide v2, p0, Lb/a/c/d$2;->c:J

    invoke-interface {v0, v1, v2, v3}, Lb/a/c/c;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    goto :goto_0
.end method
