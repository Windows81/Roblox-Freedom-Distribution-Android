.class Lb/a/c/d$c$3;
.super Lb/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/d$c;->a(Lb/a/c/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/c/n;

.field final synthetic c:Lb/a/c/d$c;


# direct methods
.method varargs constructor <init>(Lb/a/c/d$c;Ljava/lang/String;[Ljava/lang/Object;Lb/a/c/n;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lb/a/c/d$c$3;->c:Lb/a/c/d$c;

    iput-object p4, p0, Lb/a/c/d$c$3;->a:Lb/a/c/n;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 735
    :try_start_0
    iget-object v0, p0, Lb/a/c/d$c$3;->c:Lb/a/c/d$c;

    iget-object v0, v0, Lb/a/c/d$c;->c:Lb/a/c/d;

    iget-object v0, v0, Lb/a/c/d;->i:Lb/a/c/c;

    iget-object v1, p0, Lb/a/c/d$c$3;->a:Lb/a/c/n;

    invoke-interface {v0, v1}, Lb/a/c/c;->a(Lb/a/c/n;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    goto :goto_0
.end method
