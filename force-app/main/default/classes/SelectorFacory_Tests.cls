/**
 * Created by Brooks Johnson on 3/26/2022.
 */

@IsTest
private class SelectorFacory_Tests {
    @IsTest
    static void returnStandardSelector() {
        //given
        ISelector selector;
        //when
        selector = SelectorFactory.getSelector();
        //then
        System.assert(selector instanceof Selector, 'It should return the actual selector');
    }

    @IsTest
    static void returnMockSelector() {
        //given
        SelectorFactory.withMocks = true;
        ISelector selector;
        //when
        selector = SelectorFactory.getSelector();
        //then
        System.assert(selector instanceof SelectorMock, 'It should return the mock selector');
    }
}