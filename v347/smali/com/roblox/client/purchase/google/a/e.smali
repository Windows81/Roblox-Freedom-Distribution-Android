.class public Lcom/roblox/client/purchase/google/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/purchase/google/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/purchase/google/a/e$b;,
        Lcom/roblox/client/purchase/google/a/e$a;,
        Lcom/roblox/client/purchase/google/a/e$e;,
        Lcom/roblox/client/purchase/google/a/e$c;,
        Lcom/roblox/client/purchase/google/a/e$d;
    }
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/lang/String;

.field h:Landroid/content/Context;

.field i:Lcom/a/a/a/a;

.field j:Landroid/content/ServiceConnection;

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Lcom/roblox/client/purchase/google/a/e$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/roblox/client/purchase/google/a/e;->a:Z

    .line 76
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->b:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/roblox/client/purchase/google/a/e;->c:Z

    .line 82
    iput-boolean v1, p0, Lcom/roblox/client/purchase/google/a/e;->d:Z

    .line 85
    iput-boolean v1, p0, Lcom/roblox/client/purchase/google/a/e;->e:Z

    .line 89
    iput-boolean v1, p0, Lcom/roblox/client/purchase/google/a/e;->f:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->g:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->m:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/roblox/client/purchase/google/a/e;->m:Ljava/lang/String;

    .line 167
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 853
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    .line 856
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 857
    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    .line 866
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 868
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 869
    rsub-int v0, p0, -0x3e8

    .line 870
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 871
    aget-object v0, v1, v0

    .line 881
    :goto_0
    return-object v0

    .line 874
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 877
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 878
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 881
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->d:Z

    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 897
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/a/a/a;

    if-nez v0, :cond_0

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IabHelper.mService is null. Service not connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 899
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Billing service is disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/content/Intent;)I
    .locals 4

    .prologue
    .line 925
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 926
    if-nez v0, :cond_0

    .line 927
    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 928
    const/4 v0, 0x0

    .line 934
    :goto_0
    return v0

    .line 930
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 931
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 933
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 934
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 937
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 939
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Landroid/os/Bundle;)I
    .locals 4

    .prologue
    .line 905
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 906
    if-nez v0, :cond_0

    .line 907
    const-string v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 908
    const/4 v0, 0x0

    .line 914
    :goto_0
    return v0

    .line 910
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 911
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 913
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 914
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 917
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 919
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Lcom/roblox/client/purchase/google/a/g;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 964
    const-string v0, "queryPurchases"

    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 966
    const/4 v0, 0x0

    move v1, v3

    .line 969
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 970
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/a/a/a;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, p2, v0}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 973
    invoke-virtual {p0, v6}, Lcom/roblox/client/purchase/google/a/e;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Owned items response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 975
    if-eqz v0, :cond_1

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPurchases() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    move v3, v0

    .line 1021
    :cond_0
    :goto_1
    return v3

    .line 979
    :cond_1
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    .line 980
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    .line 981
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 982
    :cond_2
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 983
    const/16 v3, -0x3ea

    goto :goto_1

    .line 986
    :cond_3
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 988
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 990
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move v5, v3

    move v4, v1

    .line 993
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 994
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 995
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 996
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 997
    iget-object v10, p0, Lcom/roblox/client/purchase/google/a/e;->m:Ljava/lang/String;

    invoke-static {v10, v0, v1}, Lcom/roblox/client/purchase/google/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 998
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sku is owned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 999
    new-instance v2, Lcom/roblox/client/purchase/google/a/h;

    invoke-direct {v2, p2, v0, v1}, Lcom/roblox/client/purchase/google/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v2}, Lcom/roblox/client/purchase/google/a/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1002
    const-string v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->e(Ljava/lang/String;)V

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase data: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 1007
    :cond_4
    invoke-virtual {p1, v2}, Lcom/roblox/client/purchase/google/a/g;->a(Lcom/roblox/client/purchase/google/a/h;)V

    .line 993
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 1010
    :cond_5
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->e(Ljava/lang/String;)V

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   Purchase data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Signature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 1013
    const/4 v4, 0x1

    goto :goto_3

    .line 1017
    :cond_6
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 1019
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1021
    if-eqz v4, :cond_0

    const/16 v3, -0x3eb

    goto/16 :goto_1

    :cond_7
    move v1, v4

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/roblox/client/purchase/google/a/g;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/roblox/client/purchase/google/a/g;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 701
    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 702
    const-string v0, "querySkuDetails"

    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 703
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 704
    invoke-virtual {p2, p1}, Lcom/roblox/client/purchase/google/a/g;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 705
    if-eqz p3, :cond_1

    .line 706
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 707
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 708
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 713
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 714
    const-string v0, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    move v0, v1

    .line 743
    :goto_1
    return v0

    .line 718
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 719
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 720
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/a/a/a;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1, v0}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 723
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 724
    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 725
    if-eqz v0, :cond_3

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSkuDetails() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 730
    :cond_3
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 731
    const/16 v0, -0x3ea

    goto :goto_1

    .line 735
    :cond_4
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 738
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 739
    new-instance v3, Lcom/roblox/client/purchase/google/a/j;

    invoke-direct {v3, p1, v0}, Lcom/roblox/client/purchase/google/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got sku details: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p2, v3}, Lcom/roblox/client/purchase/google/a/g;->a(Lcom/roblox/client/purchase/google/a/j;)V

    goto :goto_2

    :cond_5
    move v0, v1

    .line 743
    goto :goto_1
.end method

.method public a(ZLjava/util/List;)Lcom/roblox/client/purchase/google/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/roblox/client/purchase/google/a/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/purchase/google/a/d;
        }
    .end annotation

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/roblox/client/purchase/google/a/e;->a(ZLjava/util/List;Ljava/util/List;)Lcom/roblox/client/purchase/google/a/g;

    move-result-object v0

    return-object v0
.end method

.method public a(ZLjava/util/List;Ljava/util/List;)Lcom/roblox/client/purchase/google/a/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/roblox/client/purchase/google/a/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/purchase/google/a/d;
        }
    .end annotation

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    .line 589
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;)V

    .line 590
    const-string v0, "queryInventory"

    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 592
    :try_start_0
    new-instance v0, Lcom/roblox/client/purchase/google/a/g;

    invoke-direct {v0}, Lcom/roblox/client/purchase/google/a/g;-><init>()V

    .line 593
    const-string v1, "inapp"

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/purchase/google/a/e;->a(Lcom/roblox/client/purchase/google/a/g;Ljava/lang/String;)I

    move-result v1

    .line 594
    if-eqz v1, :cond_0

    .line 595
    new-instance v0, Lcom/roblox/client/purchase/google/a/d;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 622
    :catch_0
    move-exception v0

    .line 623
    new-instance v1, Lcom/roblox/client/purchase/google/a/d;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 598
    :cond_0
    if-eqz p1, :cond_1

    .line 599
    :try_start_1
    const-string v1, "inapp"

    invoke-virtual {p0, v1, v0, p2}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;Lcom/roblox/client/purchase/google/a/g;Ljava/util/List;)I

    move-result v1

    .line 600
    if-eqz v1, :cond_1

    .line 601
    new-instance v0, Lcom/roblox/client/purchase/google/a/d;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 625
    :catch_1
    move-exception v0

    .line 626
    new-instance v1, Lcom/roblox/client/purchase/google/a/d;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 606
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/roblox/client/purchase/google/a/e;->e:Z

    if-eqz v1, :cond_3

    .line 607
    const-string v1, "subs"

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/purchase/google/a/e;->a(Lcom/roblox/client/purchase/google/a/g;Ljava/lang/String;)I

    move-result v1

    .line 608
    if-eqz v1, :cond_2

    .line 609
    new-instance v0, Lcom/roblox/client/purchase/google/a/d;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 612
    :cond_2
    if-eqz p1, :cond_3

    .line 613
    const-string v1, "subs"

    invoke-virtual {p0, v1, v0, p2}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;Lcom/roblox/client/purchase/google/a/g;Ljava/util/List;)I

    move-result v1

    .line 614
    if-eqz v1, :cond_3

    .line 615
    new-instance v0, Lcom/roblox/client/purchase/google/a/d;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 620
    :cond_3
    return-object v0
.end method

.method a()V
    .locals 2

    .prologue
    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 955
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->g:Ljava/lang/String;

    .line 956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->f:Z

    .line 957
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;ILcom/roblox/client/purchase/google/a/e$c;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 358
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/roblox/client/purchase/google/a/e;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/roblox/client/purchase/google/a/e$c;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/roblox/client/purchase/google/a/e$c;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 391
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    .line 392
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;)V

    .line 393
    const-string v0, "launchPurchaseFlow"

    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 394
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->b(Ljava/lang/String;)V

    .line 397
    const-string v0, "subs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->e:Z

    if-nez v0, :cond_1

    .line 398
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/a/e;->a()V

    .line 401
    if-eqz p5, :cond_0

    .line 402
    invoke-interface {p5, v0, v7}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructing buy intent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/a/a/a;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 410
    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->a(Landroid/os/Bundle;)I

    move-result v1

    .line 411
    if-eqz v1, :cond_2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/a/e;->a()V

    .line 414
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 415
    if-eqz p5, :cond_0

    .line 416
    const/4 v1, 0x0

    invoke-interface {p5, v0, v1}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 438
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/a/e;->a()V

    .line 440
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 441
    if-eqz p5, :cond_0

    .line 442
    invoke-interface {p5, v0, v7}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    goto/16 :goto_0

    .line 421
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 423
    iput p4, p0, Lcom/roblox/client/purchase/google/a/e;->k:I

    .line 424
    iput-object p5, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    .line 425
    iput-object p3, p0, Lcom/roblox/client/purchase/google/a/e;->l:Ljava/lang/String;

    .line 426
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 428
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    .line 429
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p4

    .line 426
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 431
    if-eqz p5, :cond_0

    .line 432
    invoke-interface {p5}, Lcom/roblox/client/purchase/google/a/e$c;->a()V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 445
    :catch_1
    move-exception v0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 448
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/a/e;->a()V

    .line 450
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 451
    if-eqz p5, :cond_0

    .line 452
    invoke-interface {p5, v0, v7}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/roblox/client/purchase/google/a/e$d;)V
    .locals 4

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    .line 207
    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->c:Z

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/roblox/client/purchase/google/a/e$1;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/purchase/google/a/e$1;-><init>(Lcom/roblox/client/purchase/google/a/e;Lcom/roblox/client/purchase/google/a/e$d;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->j:Landroid/content/ServiceConnection;

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    if-eqz p1, :cond_1

    .line 284
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/roblox/client/purchase/google/a/e$d;->a(Lcom/roblox/client/purchase/google/a/f;)V

    goto :goto_0
.end method

.method public a(Lcom/roblox/client/purchase/google/a/e$e;)V
    .locals 2

    .prologue
    .line 689
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/roblox/client/purchase/google/a/e;->a(ZLjava/util/List;Lcom/roblox/client/purchase/google/a/e$e;)V

    .line 690
    return-void
.end method

.method a(Lcom/roblox/client/purchase/google/a/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/purchase/google/a/d;
        }
    .end annotation

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    .line 757
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;)V

    .line 758
    const-string v0, "consume"

    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 760
    iget-object v0, p1, Lcom/roblox/client/purchase/google/a/h;->a:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    new-instance v0, Lcom/roblox/client/purchase/google/a/d;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/roblox/client/purchase/google/a/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' can\'t be consumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 766
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/h;->f()Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/h;->d()Ljava/lang/String;

    move-result-object v1

    .line 768
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 769
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 770
    new-instance v0, Lcom/roblox/client/purchase/google/a/d;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    new-instance v1, Lcom/roblox/client/purchase/google/a/d;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 774
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 775
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/a/a/a;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/a/a/a/a;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 776
    if-nez v0, :cond_3

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 787
    return-void

    .line 780
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 781
    new-instance v2, Lcom/roblox/client/purchase/google/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public a(Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V
    .locals 2

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    .line 826
    const-string v0, "consumeAsync"

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;)V

    .line 827
    const-string v0, "consumeAsync"

    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/util/List;Lcom/roblox/client/purchase/google/a/e$a;Lcom/roblox/client/purchase/google/a/e$b;)V

    .line 831
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->c:Z

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 890
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_0
    return-void
.end method

.method a(Ljava/util/List;Lcom/roblox/client/purchase/google/a/e$a;Lcom/roblox/client/purchase/google/a/e$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/roblox/client/purchase/google/a/h;",
            ">;",
            "Lcom/roblox/client/purchase/google/a/e$a;",
            "Lcom/roblox/client/purchase/google/a/e$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1027
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 1028
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->b(Ljava/lang/String;)V

    .line 1029
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/roblox/client/purchase/google/a/e$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/purchase/google/a/e$3;-><init>(Lcom/roblox/client/purchase/google/a/e;Ljava/util/List;Lcom/roblox/client/purchase/google/a/e$a;Landroid/os/Handler;Lcom/roblox/client/purchase/google/a/e$b;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1058
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1059
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    .line 181
    iput-boolean p1, p0, Lcom/roblox/client/purchase/google/a/e;->a:Z

    .line 182
    return-void
.end method

.method public a(ZLjava/util/List;Lcom/roblox/client/purchase/google/a/e$e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/client/purchase/google/a/e$e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 657
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 658
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    .line 659
    const-string v0, "queryInventoryAsync"

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;)V

    .line 660
    const-string v0, "queryInventoryAsync"

    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 661
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->b(Ljava/lang/String;)V

    .line 662
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/roblox/client/purchase/google/a/e$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/purchase/google/a/e$2;-><init>(Lcom/roblox/client/purchase/google/a/e;ZLjava/util/List;Lcom/roblox/client/purchase/google/a/e$e;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 685
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 686
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/16 v8, -0x3ea

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 472
    iget v2, p0, Lcom/roblox/client/purchase/google/a/e;->k:I

    if-eq p1, v2, :cond_0

    .line 566
    :goto_0
    return v0

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    .line 477
    const-string v2, "handleActivityResult"

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;)V

    .line 478
    const-string v2, "handleActivityResult"

    invoke-direct {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/a/e;->a()V

    .line 483
    if-nez p3, :cond_2

    .line 484
    const-string v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 485
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const-string v2, "Null data in IAB result"

    invoke-direct {v0, v8, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz v2, :cond_1

    .line 487
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    invoke-interface {v2, v0, v7}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_1
    move v0, v1

    .line 489
    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {p0, p3}, Lcom/roblox/client/purchase/google/a/e;->a(Landroid/content/Intent;)I

    move-result v2

    .line 493
    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 494
    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 496
    if-ne p2, v5, :cond_a

    if-nez v2, :cond_a

    .line 497
    const-string v2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purchase data: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data signature: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extras: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected item type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/roblox/client/purchase/google/a/e;->l:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 503
    if-eqz v3, :cond_3

    if-nez v4, :cond_5

    .line 504
    :cond_3
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extras: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 506
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v2, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 507
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz v2, :cond_4

    .line 508
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    invoke-interface {v2, v0, v7}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_4
    move v0, v1

    .line 510
    goto/16 :goto_0

    .line 515
    :cond_5
    :try_start_0
    new-instance v2, Lcom/roblox/client/purchase/google/a/h;

    iget-object v5, p0, Lcom/roblox/client/purchase/google/a/e;->l:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v4}, Lcom/roblox/client/purchase/google/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v2}, Lcom/roblox/client/purchase/google/a/h;->d()Ljava/lang/String;

    move-result-object v5

    .line 519
    iget-object v6, p0, Lcom/roblox/client/purchase/google/a/e;->m:Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lcom/roblox/client/purchase/google/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 521
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signature verification failed for sku "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 522
    iget-object v3, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz v3, :cond_6

    .line 523
    iget-object v3, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    invoke-interface {v3, v0, v2}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_6
    move v0, v1

    .line 525
    goto/16 :goto_0

    .line 527
    :cond_7
    const-string v3, "Purchase signature successfully verified."

    invoke-virtual {p0, v3}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    iget-object v3, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz v3, :cond_8

    .line 540
    iget-object v3, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    new-instance v4, Lcom/roblox/client/purchase/google/a/f;

    const-string v5, "Success"

    invoke-direct {v4, v0, v5}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v2}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_8
    :goto_1
    move v0, v1

    .line 566
    goto/16 :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    const-string v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 532
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const-string v2, "Failed to parse purchase data."

    invoke-direct {v0, v8, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 533
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz v2, :cond_9

    .line 534
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    invoke-interface {v2, v0, v7}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_9
    move v0, v1

    .line 536
    goto/16 :goto_0

    .line 543
    :cond_a
    if-ne p2, v5, :cond_b

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz v0, :cond_8

    .line 547
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const-string v3, "Problem purchashing item."

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 548
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    invoke-interface {v2, v0, v7}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    goto :goto_1

    .line 551
    :cond_b
    if-nez p2, :cond_c

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase canceled - Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 553
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v2, -0x3ed

    const-string v3, "User canceled."

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 554
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz v2, :cond_8

    .line 555
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    invoke-interface {v2, v0, v7}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    goto :goto_1

    .line 559
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase failed. Result code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 560
    invoke-static {v2}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 561
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v2, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 562
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz v2, :cond_8

    .line 563
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->n:Lcom/roblox/client/purchase/google/a/e$c;

    invoke-interface {v2, v0, v7}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    goto/16 :goto_1
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->f:Z

    if-eqz v0, :cond_0

    .line 945
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_0
    iput-object p1, p0, Lcom/roblox/client/purchase/google/a/e;->g:Ljava/lang/String;

    .line 949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->f:Z

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1062
    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->a:Z

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return-void
.end method
