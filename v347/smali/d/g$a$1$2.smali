.class Ld/g$a$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g$a$1;->a(Ld/b;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Ld/g$a$1;


# direct methods
.method constructor <init>(Ld/g$a$1;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Ld/g$a$1$2;->b:Ld/g$a$1;

    iput-object p2, p0, Ld/g$a$1$2;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Ld/g$a$1$2;->b:Ld/g$a$1;

    iget-object v0, v0, Ld/g$a$1;->a:Ld/d;

    iget-object v1, p0, Ld/g$a$1$2;->b:Ld/g$a$1;

    iget-object v1, v1, Ld/g$a$1;->b:Ld/g$a;

    iget-object v2, p0, Ld/g$a$1$2;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Ld/d;->a(Ld/b;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method
