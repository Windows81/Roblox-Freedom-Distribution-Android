.class Lcom/roblox/client/k$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/k;->r()V
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
    .line 387
    iput-object p1, p0, Lcom/roblox/client/k$6;->a:Lcom/roblox/client/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/roblox/client/k$6;->a:Lcom/roblox/client/k;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/roblox/client/util/k;->a(Landroid/content/Context;J)V

    .line 391
    invoke-static {}, Lcom/roblox/client/util/k;->a()V

    .line 392
    return-void
.end method
