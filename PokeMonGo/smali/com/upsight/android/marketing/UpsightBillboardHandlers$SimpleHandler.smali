.class abstract Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;
.super Ljava/lang/Object;
.source "UpsightBillboardHandlers.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightBillboard$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/UpsightBillboardHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SimpleHandler"
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    .line 274
    iput-object p1, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->mActivity:Landroid/app/Activity;

    .line 275
    return-void
.end method


# virtual methods
.method public onDetach()V
    .registers 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    .line 285
    .local v0, "fragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_a

    .line 286
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    .line 289
    :cond_a
    return-void
.end method

.method public onNextView()V
    .registers 1

    .prologue
    .line 280
    return-void
.end method

.method public onPurchases(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightPurchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightPurchase;>;"
    return-void
.end method

.method public onRewards(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightReward;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "rewards":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightReward;>;"
    return-void
.end method
