.class Lcom/b/a/a/h/c$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/h/c;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/b/a/a/h/c;


# direct methods
.method constructor <init>(Lcom/b/a/a/h/c;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/b/a/a/h/c$2;->b:Lcom/b/a/a/h/c;

    iput-object p2, p0, Lcom/b/a/a/h/c$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/b/a/a/h/c$2;->b:Lcom/b/a/a/h/c;

    iget-object v1, p0, Lcom/b/a/a/h/c$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/b/a/a/h/c;->b(Landroid/content/Context;)V

    .line 50
    return-void
.end method
