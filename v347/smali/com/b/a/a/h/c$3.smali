.class Lcom/b/a/a/h/c$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/h/c;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/h/c;


# direct methods
.method constructor <init>(Lcom/b/a/a/h/c;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/b/a/a/h/c$3;->a:Lcom/b/a/a/h/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/b/a/a/h/c$3;->a:Lcom/b/a/a/h/c;

    invoke-virtual {v0, p1}, Lcom/b/a/a/h/c;->b(Landroid/content/Context;)V

    .line 60
    return-void
.end method
