.class Lcom/roblox/client/ActivityNativeMain$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeMain;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ActivityNativeMain;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$7;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 814
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 815
    iget-object p1, p0, Lcom/roblox/client/ActivityNativeMain$7;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {p1}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    return-void
.end method
