.class Lcom/roblox/client/contacts/ActivityContacts$1;
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
    .line 106
    iput-object p1, p0, Lcom/roblox/client/contacts/ActivityContacts$1;->a:Lcom/roblox/client/contacts/ActivityContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts$1;->a:Lcom/roblox/client/contacts/ActivityContacts;

    const-string v1, "Continue"

    invoke-static {v0, v1}, Lcom/roblox/client/contacts/ActivityContacts;->a(Lcom/roblox/client/contacts/ActivityContacts;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/roblox/client/contacts/ActivityContacts$1;->a:Lcom/roblox/client/contacts/ActivityContacts;

    invoke-static {v0}, Lcom/roblox/client/contacts/ActivityContacts;->a(Lcom/roblox/client/contacts/ActivityContacts;)V

    .line 112
    return-void
.end method
