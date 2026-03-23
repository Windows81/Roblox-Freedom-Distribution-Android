.class Landroid/support/b/b$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/b/b$1;->b(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/support/b/b$1;


# direct methods
.method constructor <init>(Landroid/support/b/b$1;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Landroid/support/b/b$1$4;->c:Landroid/support/b/b$1;

    iput-object p2, p0, Landroid/support/b/b$1$4;->a:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/b/b$1$4;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Landroid/support/b/b$1$4;->c:Landroid/support/b/b$1;

    iget-object v0, v0, Landroid/support/b/b$1;->a:Landroid/support/b/a;

    iget-object v1, p0, Landroid/support/b/b$1$4;->a:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/b/b$1$4;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/b/a;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 235
    return-void
.end method
