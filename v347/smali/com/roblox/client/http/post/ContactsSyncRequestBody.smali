.class public Lcom/roblox/client/http/post/ContactsSyncRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/contacts/model/ContactRequestObject;",
            ">;"
        }
    .end annotation
.end field

.field private country:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/contacts/model/ContactRequestObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/roblox/client/http/post/ContactsSyncRequestBody;->contacts:Ljava/util/ArrayList;

    .line 20
    iput-object p2, p0, Lcom/roblox/client/http/post/ContactsSyncRequestBody;->country:Ljava/lang/String;

    .line 21
    return-void
.end method
