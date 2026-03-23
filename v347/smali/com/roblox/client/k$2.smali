.class Lcom/roblox/client/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/k;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/k;


# direct methods
.method constructor <init>(Lcom/roblox/client/k;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/roblox/client/k$2;->a:Lcom/roblox/client/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/roblox/client/k$2;->a:Lcom/roblox/client/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/k;->a(Lcom/roblox/client/k;Landroid/support/v7/app/b;)Landroid/support/v7/app/b;

    .line 273
    return-void
.end method
