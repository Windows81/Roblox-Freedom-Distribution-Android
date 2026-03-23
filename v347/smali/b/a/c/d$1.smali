.class Lb/a/c/d$1;
.super Lb/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/d;->a(ILb/a/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lb/a/c/a;

.field final synthetic d:Lb/a/c/d;


# direct methods
.method varargs constructor <init>(Lb/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILb/a/c/a;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lb/a/c/d$1;->d:Lb/a/c/d;

    iput p4, p0, Lb/a/c/d$1;->a:I

    iput-object p5, p0, Lb/a/c/d$1;->c:Lb/a/c/a;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Lb/a/c/d$1;->d:Lb/a/c/d;

    iget v1, p0, Lb/a/c/d$1;->a:I

    iget-object v2, p0, Lb/a/c/d$1;->c:Lb/a/c/a;

    invoke-virtual {v0, v1, v2}, Lb/a/c/d;->b(ILb/a/c/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0
.end method
