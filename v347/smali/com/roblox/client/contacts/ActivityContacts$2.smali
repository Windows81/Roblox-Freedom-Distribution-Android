.class Lcom/roblox/client/contacts/ActivityContacts$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/ActivityContacts;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/contacts/ActivityContacts;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/ActivityContacts;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/roblox/client/contacts/ActivityContacts$2;->a:Lcom/roblox/client/contacts/ActivityContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts$2;->a:Lcom/roblox/client/contacts/ActivityContacts;

    invoke-static {v0}, Lcom/roblox/client/contacts/ActivityContacts;->b(Lcom/roblox/client/contacts/ActivityContacts;)V

    .line 120
    return-void
.end method
