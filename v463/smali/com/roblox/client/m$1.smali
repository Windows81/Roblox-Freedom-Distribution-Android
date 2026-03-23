.class Lcom/roblox/client/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/m;->a(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/m;


# direct methods
.method constructor <init>(Lcom/roblox/client/m;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/roblox/client/m$1;->a:Lcom/roblox/client/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "logout"

    const-string v1, "no"

    .line 51
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
